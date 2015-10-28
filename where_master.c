/**
*	\file Code for the master node  in the Where project.
*	\author Jose Manuel Herruzo Ruiz
*
*   The master device is used to gather the information provided by the other
*	devices and print it to the serial port in order to be processed
* 	and shown to the final user
**/

//Include where functions
#include "where.h"

#define THIS_NODE_ID 1


/**
* Calculates the time to the next ping.
* \return Next ping interval.
**/
clock_time_t next_ping(void);

/* These hold the broadcast and unicast structures, respectively. */
static struct broadcast_conn sync_conn, ping_conn;
static struct unicast_conn unicast;


/**
* Neighbours array
**/
struct neighbour neighbours[MAX_NEIGHBOURS];
int n_neighbours=0;

/*---------------------------------------------------------------------------*/
/* We first declare our processes. */
PROCESS(sync_process, "Sync process");
PROCESS(ping_process, "Ping process");

AUTOSTART_PROCESSES(&sync_process, &ping_process);
/*---------------------------------------------------------------------------*/
/**
* This function is called whenever a broadcast message is received at the SYNC_CHANNEL.
* It dont must be called at the master side.
**/
static void
sync_conn_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{
  uint8_t *packet_type;
  clock_time_t time;
  
  packet_type = packetbuf_dataptr();
  printf("In: %i %u %i.%i\n", *packet_type, clock_time(), from->u8[0], from->u8[1]);
}
/* This is where we define what function to be called when a broadcast
   is received. We pass a pointer to this structure in the
   broadcast_open() call below. */
static const struct broadcast_callbacks sync_conn_call = {sync_conn_recv};
/*---------------------------------------------------------------------------*/

PROCESS_THREAD(sync_process, ev, data)
{
  static struct etimer et;
  struct sync_message msg;

  PROCESS_EXITHANDLER(broadcast_close(&sync_conn);)

  PROCESS_BEGIN();

  broadcast_open(&sync_conn, SYNC_CHANNEL, &sync_conn_call);

  while(1) {

    /* Send a broadcast every SYNC_INTERVAL seconds */
    etimer_set(&et, CLOCK_SECOND * SYNC_INTERVAL);

    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    printf("Sync\n");
    //Set local time and packet type
    msg.type = MESSAGE_SYNC;
    msg.timestamp = clock_time();
    
    packetbuf_clear();
    packetbuf_copyfrom(&msg, sizeof(struct sync_message));
    broadcast_send(&sync_conn);
  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
/* This function is called whenever a broadcast message is received at the PING_CHANNEL. */
static void
ping_conn_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{
  int i;
  int id=-1;
  
  for(i=0; i<n_neighbours; i++)
    if(rimeaddr_cmp(&neighbours[i].addr, from))
    {
      id=i;
      break;
    }
  
  if(id==-1) //New neighbour
  {
    id = n_neighbours;
    n_neighbours++;
    rimeaddr_copy(&neighbours[id].addr, from);
    neighbours[id].last_rssi = packetbuf_attr(PACKETBUF_ATTR_RSSI);
    neighbours[id].last_lqi = packetbuf_attr(PACKETBUF_ATTR_LINK_QUALITY);
    printf("Storing: %i %i %i\n",neighbours[id].last_rssi, neighbours[id].last_lqi, n_neighbours );
  }else //Stored neighbour
  {
    neighbours[id].last_rssi = packetbuf_attr(PACKETBUF_ATTR_RSSI);
    neighbours[id].last_lqi = packetbuf_attr(PACKETBUF_ATTR_LINK_QUALITY);
    printf("Updating: %i %i %i\n",neighbours[id].last_rssi, neighbours[id].last_lqi, n_neighbours );
  }
}
/* This is where we define what function to be called when a broadcast
   is received. We pass a pointer to this structure in the
   broadcast_open() call below. */
static const struct broadcast_callbacks ping_conn_call = {ping_conn_recv};
/*---------------------------------------------------------------------------*/
/**
* Ping process
* This process send a broadcast every PING_INTERVAl to set the RSSI between neighbours
**/
PROCESS_THREAD(ping_process, ev, data)
{
  static struct etimer et;
  struct sync_message msg;

  PROCESS_EXITHANDLER(broadcast_close(&ping_conn);)

  PROCESS_BEGIN();

  broadcast_open(&ping_conn, PING_CHANNEL, &ping_conn_call);

  while(1) {

    /* Send a broadcast every BROADCAST_INTERVAL seconds */
    etimer_set(&et, next_ping());
    
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));

    msg.type = MESSAGE_PING;
    packetbuf_clear();
    packetbuf_copyfrom(&msg, sizeof(struct sync_message));
    broadcast_send(&ping_conn);
  }

  PROCESS_END();
}

/*---------------------------------------------------------------------------*/
clock_time_t next_ping()
{
  clock_time_t m_time = clock_time();
  int aux = BROADCAST_TICKS;
  clock_time_t master_interval = aux - m_time%aux;
  return master_interval;
}