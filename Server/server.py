##
#   \file TCP Server. This receive the data from the node a processes it
#   \author Jose Manuel Herruzo Ruiz
#

import socket
import sys
import pickle
import SocketServer
import MySQLdb
import numpy as np
from threading import Thread
from staticdata import *
from serverfunctions import *


# Open DB
db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
)
cur = db.cursor()

#Get the rooms size
rooms = getRoomsInfo(cur)

#Get all the devices info
devices, dev_ids, dev_dbids = getDevicesInfo(cur)

#Get the default devices rssi
default_rssi = getDefaultRssi(cur, devices, dev_ids)

db.close()


##
#   Class for handling input TCP connection
class service(SocketServer.BaseRequestHandler):
    def handle(self):
        data = ''
        print "Client connected with ", self.client_address
        aux = ' '
        while len(aux):
            aux = self.request.recv(1024)
            data +=aux
           
        load_data = pickle.loads(data)
        #load_data must be in format: [room, time, (device data)...]
        room = load_data[0]
        devs = devices[room]
        room_x = rooms[room][0]
        room_y = rooms[room][1]
        n_devs = len(devs)
        
        # Save the data into a matrix
        mat_data = dataToMatrix(load_data, dev_ids, devices)
        lines = getActiveLinksAsLines(mat_data, default_rssi, dev_dbids, devices, room)
        if(len(lines)>0):
            pol = getIntersection(lines, room_x, room_y)
            print "Persona detectada en:" + str(pol)
            saveToDatabase(pol, room)
        else:
            print "Persona no detectada"
        
        print "Client exited"
        self.request.close()

##
#   Class for open input TCP connection and serve it to the handler
class ThreadedTCPServer( SocketServer.ThreadingTCPServer):
    def __init__(self, server_address, RequestHandlerClass, devices):
        SocketServer.ThreadingTCPServer.__init__(self, 
                                                 server_address, 
                                                 RequestHandlerClass)
        self.devices = devices

##
# Start the TCP Server
t = ThreadedTCPServer(('',PORT), service, devices)
t.serve_forever()