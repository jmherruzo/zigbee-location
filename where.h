/**
*	 \file Headers file with definitions for the Where project
*	 \author Jose Manuel Herruzo Ruiz
**/

#ifndef __WHERE__
#define __WHERE__

//Contiki includes
#include "contiki.h"
#include "lib/list.h"
#include "lib/memb.h"
#include "lib/random.h"
#include "net/rime.h"

//Stdio include for print to serial
#include <stdio.h>

/**
*	Interval for broadcasting pings between the slaves and master
**/
#define BROADCAST_INTERVAL 10
#define BROADCAST_TICKS BROADCAST_INTERVAL*CLOCK_SECOND
/**
*	Interval for time sync
**/
#define SYNC_INTERVAL 30
#define SYNC_TICKS SYNC_INTERVAL*CLOCK_SECOND

/**
*	Maximum number of neighbours to remember
**/
#define MAX_NEIGHBOURS 16

/**
* Channel used for communications
**/
#define PING_CHANNEL 128
#define DATA_CHANNEL 129
#define SYNC_CHANNEL 130

//Message type id
#define MESSAGE_PING 1
#define MESSAGE_SYNC 2
#define MESSAGE_DATA 3

/**
*	Structure used to ping the neighbours each BROADCAST_INTERVAL to get the RSSI
**/
struct ping_message{
	uint8_t type;
};

/**
*	Structure used to send the master time to the slaves
**/
struct sync_message{
	uint8_t type;
	clock_time_t timestamp;
};


/**
*	Structure which holds all the information about each neighbour. An array of this 
*	structure must be sent to the master node
**/
struct neighbour{
	/**
	*	Neighbour address. By default, it is 16bits, in two uint8 values
	**/
	rimeaddr_t addr;
	
	/**
	*	Last RSSI value read from a neighbour ping packet
	**/
	uint16_t last_rssi;
	
	
	/**
	*	Last LQI value read from a neighbour ping packet
	**/
	uint16_t last_lqi;
};


int mod(int a, int b)
{
	int aux = a/b;
	return a-b*aux;
}

void print_neighbours(struct neighbour* neighbours, int n)
{
	int i;
	for(i=0; i<n; i++)
		printf("Addr: %u.%u RSSI: %u LQI: %u\n",
				neighbours[i].addr.u8[0],
				neighbours[i].addr.u8[1],
				neighbours[i].last_rssi,
				neighbours[i].last_lqi);
}

#endif /*__WHERE__*/