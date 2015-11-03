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

/**
* Identificators of the device and room where it will be installed
* Both values must be between 1 and 255 (8 bits)
**/
#define ROOM_ID 27
#define DEVICE_ID 65

/**
* Calculates the time to the next ping.
* \return Next ping interval.
**/
clock_time_t next_ping(void);
/**
* Calculates the time to the next update.
* \return Next update interval.
**/
clock_time_t next_update(void);

/**
* These hold the broadcast and unicast structures, respectively.
**/
static struct broadcast_conn sync_conn, ping_conn;
static struct unicast_conn unicast;

/**
* Rime address of this node
**/
rimeaddr_t *this_node;

/**
* Neighbours array
**/
struct neighbour neighbours[MAX_NEIGHBOURS];
int8_t neighbours_buffer[MAX_NEIGHBOURS*NEIGHBOUR_BYTES];
int n_neighbours=0;

/*---------------------------------------------------------------------------*/
/* We first declare our processes. */
PROCESS(sync_process, "Sync process");
PROCESS(ping_process, "Ping process");
PROCESS(update_process, "update_process");

AUTOSTART_PROCESSES(&sync_process);
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
    
  //Wait a time to avoid errors
  etimer_set(&et, CLOCK_SECOND*2);
  PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
  
  //We start other process
  process_start(&ping_process, NULL);
  process_start(&update_process, NULL);

  broadcast_open(&sync_conn, SYNC_CHANNEL, &sync_conn_call);
  
  //We set the node address
  this_node->u8[0] = ROOM_ID;
  this_node->u8[1] = DEVICE_ID;
  rimeaddr_set_node_addr(this_node);

  while(1) {

    /* Send a broadcast every SYNC_INTERVAL seconds */
    etimer_set(&et, CLOCK_SECOND * SYNC_INTERVAL);

    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    printf("This: %u.%u", rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1]);
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
  printf("Ping: %u.%u", from->u8[0], from->u8[1]);
    
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
/**
* This function is called for every incoming unicast packet in the DATA_CHANNEL.
* This never must be called
**/
static void
recv_unicast(struct unicast_conn *c, const rimeaddr_t *from)
{
  int n_received = packetbuf_datalen()/sizeof(struct neighbour);
  packetbuf_copyto(neighbours_buffer);
  print_neighbours(from, neighbours_buffer, n_received);
}
static const struct unicast_callbacks unicast_callbacks = {recv_unicast};
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(update_process, ev, data)
{
  static struct etimer et;
    
  PROCESS_EXITHANDLER(unicast_close(&unicast);)
    
  PROCESS_BEGIN();

  unicast_open(&unicast, DATA_CHANNEL, &unicast_callbacks);

  while(1) {    
    etimer_set(&et, next_update());
    
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));

    print_neighbours(this_node, (int8_t*)neighbours, n_neighbours);
    
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
clock_time_t next_update()
{
  return next_ping()+(BROADCAST_TICKS/2);
}