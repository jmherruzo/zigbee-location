##
#	\file Serial managing from python
#	\author Jose Manuel Herruzo Ruiz

import time
import serial
import numpy as np
import struct
# configure the serial connections (the parameters differs on the device you are connecting to)

ser = serial.Serial("/dev/ttyACM0", 9600)

#ser.close()
#ser.open()
print ser.isOpen()

while 1 :
    # send the character to the device
    # (note that I happend a \r\n carriage return and line feed to the characters - this is requested by my device)
    # let's wait one second before reading output (let's give device time to answer)
    time.sleep(1)
    n = ord(ser.read(1))
    addr0 = ord(ser.read(1))
    addr1 = ord(ser.read(1))
    print 'Recibidos ' + str(n) + ' datos de ' + str(addr0) + '.' + str(addr1) + ':\n'
    for i in range(n):
        print '\t Address: ' + str(ord(ser.read(1)))+'.'+ str(ord(ser.read(1))) + '\n';
        print '\t RSSI: ' + str(struct.unpack('h', ser.read(2))) + '\n';
        print '\t LQI: ' + str(struct.unpack('h', ser.read(2))) + '\n';
    ser.read(1);
