##
#	\file Serial managing from python
#	\author Jose Manuel Herruzo Ruiz

import time
import serial
import numpy as np
import struct
import sqlite3
import calendar
import time

MESSAGE_PING = 1
MESSAGE_DATA = 3 
database = 'where.db'

# Configure the serial connections (the parameters differs on the device you are connecting to)

ser = serial.Serial("/dev/ttyACM0", 9600)

#ser.close()
#ser.open()

data = []
while 1 :
    print 'Before ser.read'
    message_type = ord(ser.read(1))
    print 'After ser.read'
    #If the message is PING, we save the data into the database 
    if (message_type == MESSAGE_PING):
        print data
        now =  calendar.timegm(time.gmtime())
        #SQL data saving
        """
        conn = sqlite3.connect(database)
        c = conn.cursor()
        c.executemany('INSERT INTO Data VALUES ('+str(now)+',?,?,?,?,?)', data)
        conn.commit()
        conn.close()
        """
        data = []
        #Read final \n of the message
        ser.read(1);
    elif (message_type == MESSAGE_DATA):
    #If the message is DATA, we get the data into a list for saving it later
        n = ord(ser.read(1))
        room_origin = ord(ser.read(1))
        device_origin = ord(ser.read(1))
        print 'Recibidos ' + str(n) + ' datos de ' + str(room_origin) + '.' + str(device_origin) + ':\n'
        for i in range(n):
            room_destination = ord(ser.read(1))
            device_destination = ord(ser.read(1))
            rssi = struct.unpack('h', ser.read(2))[0]
            lqi = struct.unpack('h', ser.read(2))[0]
            data.append((room_destination,
                        device_origin, 
                        device_destination, 
                        rssi, 
                        lqi))
            print '\t Address: ' + str(room_destination) +'.'+ str(device_destination) + '\n';
            print '\t RSSI: ' + str(rssi) + '\n';
            print '\t LQI: ' + str(lqi) + '\n';
            #Read final \n of the message
            ser.read(1);
    else:
        print 'Else: ' + str(message_type)
    
    

