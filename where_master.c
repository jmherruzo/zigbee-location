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


/* These hold the broadcast and unicast structures, respectively. */
static struct broadcast_conn broadcast;
static struct unicast_conn unicast;

/*---------------------------------------------------------------------------*/
/* We first declare our processes. */
PROCESS(sync_process, "Sync process");

AUTOSTART_PROCESSES(&sync_process);
/*---------------------------------------------------------------------------*/
/* This function is called whenever a broadcast message is received. */
static void
broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)
{
  uint8_t *packet_type;
  clock_time_t time;
  
  packet_type = packetbuf_dataptr();
  printf("In: %i %u %i.%i\n", *packet_type, clock_time(), from->u8[0], from->u8[1]);
}
/* This is where we define what function to be called when a broadcast
   is received. We pass a pointer to this structure in the
   broadcast_open() call below. */
static const struct broadcast_callbacks broadcast_call = {broadcast_recv};
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(sync_process, ev, data)
{
  static struct etimer et;
  struct sync_message msg;

  PROCESS_EXITHANDLER(broadcast_close(&broadcast);)

  PROCESS_BEGIN();

  broadcast_open(&broadcast, PING_CHANNEL, &broadcast_call);

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
    broadcast_send(&broadcast);
  }

  PROCESS_END();
}
