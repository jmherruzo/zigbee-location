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

/**
* Identificators of the device and room where it will be installed
* Both values must be between 1 and 255 (8 bits)
**/
#define ROOM_ID 27
#define DEVICE_ID 72

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
/**
* Calculates the time to the next update. Using the previous functions, the offsets and 
* the offset time and time delta.
* \return Next update interval.
**/
clock_time_t next_update(void);

/* These hold the broadcast and unicast structures, respectively. */
static struct broadcast_conn ping_conn, sync_conn, update_conn;

/**
* Neighbours array
**/
struct neighbour neighbours[MAX_NEIGHBOURS];
int n_neighbours=0;

/**
* Master address
**/
rimeaddr_t master_node;

/**
* Offsets for time sync
**/
static int offset=0, old_offset=0;
clock_time_t offset_time, offset_delta;
uint8_t ping_started = 0;
/*---------------------------------------------------------------------------*/
/* We first declare our processes. */
PROCESS(ping_process, "ping process");
PROCESS(sync_process, "sync process");
PROCESS(update_process, "update_process");

AUTOSTART_PROCESSES(&sync_process);
/*---------------------------------------------------------------------------*/
/* This function is called whenever a broadcast message is received at the SYNC_CHANNEL. */
static void
sync_conn_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{
  struct sync_message s_msg;
  clock_time_t time;

  //Get time
  time = clock_time();
  //Copy msg data
  memcpy(&s_msg, packetbuf_dataptr(), sizeof(s_msg));
  //Set offset and old offset
  old_offset = offset;
  offset = s_msg.timestamp-time;

  //First sync:    
  if(ping_started==0)
  {
    old_offset = offset;
    rimeaddr_copy(&master_node ,from);
    ping_started=1;
    //Iniciamos el ping a otros nodos
    process_start(&ping_process, NULL);
    process_start(&update_process, NULL);
    offset_time = time;
  }
  
  //Set offset_delta and offset_time
  offset_delta = time-offset_time;
  offset_time = time;
  

}
/* This is where we define what function to be called when a broadcast
   is received. We pass a pointer to this structure in the
   broadcast_open() call below. */
static const struct broadcast_callbacks sync_conn_call = {sync_conn_recv};
/*---------------------------------------------------------------------------*/
/**
* Sync process
* The only function of this is to start the Sync connection to receive the master
* node time
**/
PROCESS_THREAD(sync_process, ev, data)
{
  static struct etimer et;
  rimeaddr_t *this_node;

  PROCESS_EXITHANDLER(broadcast_close(&sync_conn););

  PROCESS_BEGIN();  

  broadcast_open(&sync_conn, SYNC_CHANNEL, &sync_conn_call);
 
  //Wait a time to avoid errors
  etimer_set(&et, CLOCK_SECOND*2);
  PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
  
  //We set the node address
  this_node->u8[0] = ROOM_ID;
  this_node->u8[1] = DEVICE_ID;
  rimeaddr_set_node_addr(this_node);
  
  printf("%u.%u %u.%u\n",this_node->u8[0], this_node->u8[1],
    rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1] );
  
  while(1) {
    
    etimer_set(&et, CLOCK_SECOND*10);
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    etimer_reset(&et);

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
  }else //Stored neighbour
  {
    neighbours[id].last_rssi = packetbuf_attr(PACKETBUF_ATTR_RSSI);
    neighbours[id].last_lqi = packetbuf_attr(PACKETBUF_ATTR_LINK_QUALITY);
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
  struct ping_message msg;
  clock_time_t aux_next;
  char ch = 'a';

  PROCESS_EXITHANDLER(broadcast_close(&ping_conn););

  PROCESS_BEGIN();

  broadcast_open(&ping_conn, PING_CHANNEL, &ping_conn_call);

  while(1) {

    /* Send a broadcast every BROADCAST_INTERVAL seconds */
    aux_next = next_ping();
    etimer_set(&et, aux_next);
    
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    
    
    msg.type = MESSAGE_PING;
    packetbuf_clear();
    packetbuf_copyfrom(&msg, sizeof(struct sync_message));
    broadcast_send(&ping_conn);
    printf("PING!\n");
    etimer_reset(&et);
  }

  PROCESS_END();
}

/*---------------------------------------------------------------------------*/
/**
* This function is called for every incoming broadcast packet in the DATA_CHANNEL.
* This has no function, but it must be declared
**/
static void
update_conn_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{

}
static const struct broadcast_callbacks update_conn_call = {update_conn_recv};
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(update_process, ev, data)
{
  static struct etimer et;
    
  
  PROCESS_EXITHANDLER(broadcast_close(&update_conn);)
    
  PROCESS_BEGIN();

  broadcast_open(&update_conn, DATA_CHANNEL, &update_conn_call);

  while(1) {
    etimer_set(&et, next_update());
    
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    packetbuf_clear();
    packetbuf_copyfrom(&neighbours, sizeof(struct neighbour)*n_neighbours);
    broadcast_send(&update_conn); //This blocks the program when the time counter > 31000
    etimer_reset(&et);
    
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
  return master_to_local_interval(master_interval);
}
clock_time_t next_update()
{
  return next_ping()+master_to_local_interval(BROADCAST_TICKS/2);
}