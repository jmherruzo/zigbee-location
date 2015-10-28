/**
*	\file Code for the slave nodes in the Where project.
*	\author Jose Manuel Herruzo Ruiz
*
*   The target of this devices is to gather the RSSI value between nodes
*	and send them to the master node. This is done using a broadcast
*	message to ping all the neighbours each BROADCAST_TIME interval and
*	a unicast message to the master node with all the RSSI data every
*	SEND_MASTER_TIME time interval.
**/

//Include where functions
#include "where.h"

#define THIS_NODE_ID 2

//Functions definition:
/**
* Calculates the master time using the offsets got from the periodical sync messages
* \return Calculated master time
**/
clock_time_t master_time(void);
/**
* Calculates the local time for a given master time
* \param master_time Master time to use for calculate the local time
* \return Calculated local time
**/
clock_time_t local_time(clock_time_t master_time);
/**
* Calculates a local interval for a given master interval
* \param master_interval Master interval to calculate
* \return Calculated local interval
**/
clock_time_t master_to_local_interval(clock_time_t master_interval);
/**
* Calculates the time to the next ping. Using the previous functions, the offsets and 
* the offset time and time delta.
* \return Next ping interval.
**/
clock_time_t next_ping(void);

/* These hold the broadcast and unicast structures, respectively. */
static struct broadcast_conn broadcast;
static struct unicast_conn unicast;

/**
* Offsets for time sync
**/
static int offset=0, old_offset=0;
clock_time_t offset_time, offset_delta;
uint8_t ping_started = 0;
/*---------------------------------------------------------------------------*/
/* We first declare our processes. */
PROCESS(broadcast_process, "broadcast process");

AUTOSTART_PROCESSES(&broadcast_process);
/*---------------------------------------------------------------------------*/
/* This function is called whenever a broadcast message is received. */
static void
broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{
  struct sync_message s_msg;
  struct ping_message *p_msg;
  uint8_t *packet_type;
  clock_time_t time;
  
  packet_type = packetbuf_dataptr();
  if(*packet_type == MESSAGE_SYNC) //Timesync
  {

    time = clock_time();
    memcpy(&s_msg, packetbuf_dataptr(), sizeof(s_msg));
    old_offset = offset;
    offset = s_msg.timestamp-time;
    printf("Sync: offset: %i\n", offset);
    if(old_offset==0)
    {
      old_offset = offset;
      offset_time = time;
    }
    offset_delta = time-offset_time;
    offset_time = time;     
  }
  else if(packet_type == MESSAGE_PING) //Neighbour ping -> Calculate RSSI and save
  {
    
  }
}
/* This is where we define what function to be called when a broadcast
   is received. We pass a pointer to this structure in the
   broadcast_open() call below. */
static const struct broadcast_callbacks broadcast_call = {broadcast_recv};
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(broadcast_process, ev, data)
{
  static struct etimer et;
  struct ping_message msg;

  PROCESS_EXITHANDLER(broadcast_close(&broadcast););

  PROCESS_BEGIN();

  broadcast_open(&broadcast, PING_CHANNEL, &broadcast_call);

  while(1) {

    /* Send a broadcast every BROADCAST_INTERVAL seconds */
    etimer_set(&et, next_ping());
    
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    printf("Ping %u\n",  master_time());

    msg.type = MESSAGE_PING;
    packetbuf_clear();
    packetbuf_copyfrom(&msg, sizeof(struct sync_message));
    broadcast_send(&broadcast);
  }

  PROCESS_END();
}


/*---------------------------------------------------------------------------*/
clock_time_t master_time()
{
  clock_time_t time = clock_time();
  return time + offset + ((offset-old_offset)*((time-offset_time)/offset_delta));
}
clock_time_t local_time(clock_time_t master_time)
{
  return master_time - offset - ((offset-old_offset)*((master_time-offset+offset_time)/offset_delta));
}
clock_time_t master_to_local_interval(clock_time_t master_interval)
{
  return master_interval + 
         ((offset-old_offset)*(master_interval/(offset-old_offset+offset_delta)));
}
clock_time_t next_ping()
{
  clock_time_t m_time = master_time();
  int aux = BROADCAST_TICKS;
  clock_time_t master_interval = aux - m_time%aux;
  printf("Master time: %i Waiting: %u BC: %i, Modulo: %i %i \n", 
        m_time, master_interval, 
        BROADCAST_TICKS,  (m_time%aux), mod(m_time, aux));
  return master_to_local_interval(master_interval);
}
