##
#	\file Serial managing from python
#	\author Jose Manuel Herruzo Ruiz

import time
import serial
import numpy as np
import struct
import calendar
import time
import atexit
import SendThread




MESSAGE_PING = 1
MESSAGE_DATA = 3
HOST = '192.168.0.102'
PORT = 50007
sync_msg = '\nOK\n'

# Configure the serial connections (the parameters differs on the device you are connecting to)

ser = serial.Serial("/dev/ttyACM0", 9600)


data_received = False;
data = []
while 1 :
    #print 'Before ser.read'
    message_type = ord(ser.read(1))
    #print 'After ser.read' + str(message_type) + "."
    #If the message is PING, we save the data into the database 
    if (message_type == MESSAGE_PING):
        if(data_received):
            #print data
            now =  calendar.timegm(time.gmtime())
            data = [room_origin, now, data]
            #Start the sending thread
            th = SendThread.SendThread(HOST, PORT, data)
            th.start()
            #Restart the data array
            data = []
            data_received=False
        ser.read(1)
    elif (message_type == MESSAGE_DATA):
    #If the message is DATA, we get the data into a list for saving it later
        n = ord(ser.read(1))
        room_origin = ord(ser.read(1))
        device_origin = ord(ser.read(1))
        print 'Recibidos ' + str(n) + ' datos de ' + str(room_origin) + '.'  + str(device_origin) + ':\n'
        
        # Get the data from the Serial input
        for i in range(n):
            room_destination = ord(ser.read(1))
            device_destination = ord(ser.read(1))
            rssi = struct.unpack('h', ser.read(2))[0]
            lqi = struct.unpack('h', ser.read(2))[0]
            data.append((device_origin, device_destination, rssi, lqi))
            # Print the data to the stdout
            print '\t Address: '  + str(room_destination) +'.' + str(device_destination) + '\n';
            print '\t RSSI: ' + str(rssi) + '\n';
            print '\t LQI: ' + str(lqi) + '\n';
        data_received=True
        # Sync
        # White until the sync message from the CC2531 node is received
        i = 0;
        while True:
            char = ser.read(1);
            if char == sync_msg[i]:
                i = i+1;
                if i >= len(sync_msg):
                    break;
            else:
                i = 0;
    else:
        print 'Else: ' + str(message_type)

