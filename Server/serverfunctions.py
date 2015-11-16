##
#	\file File containing utility functions for the where proyect server
#	\author Jose Manuel Herruzo Ruiz

import numpy as np;
import MySQLdb
from staticdata import *
from shapely.geometry import *
import time
import pickle

##
#	Gets the rooms x and y size
#	\param cursor Database cursor
#	\return Rooms dictionary containing x and y size
def getRoomsInfo(cur):
	query = "SELECT id, x, y FROM Room;"
	cur.execute(query)
	result = cur.fetchall()
	
	rooms = {}
	for room in result:
		rooms[int(room[0])] = [int(room[1]), int(room[2])]
	return rooms
	
##
#	Gets all the info cursor
#	\param cursor Database cursor
#	\return Devices info dictionary and other dictionaries used to turn between local
# 	and database ids
def getDevicesInfo(cur):
	#Get all the devices info
	query = "SELECT Room_id, Id, X, Y, Is_master FROM Device;"
	cur.execute(query)
	result = cur.fetchall()
	
	# Create a dictionary for all the devices
	devices = {}
	for i in result:
		if devices.get(int(i[0]), None)==None:
			devices[int(i[0])] = [(int(i[1]), int(i[2]), int(i[3]))]
		else:
			devices[int(i[0])].append((int(i[1]), int(i[2]), int(i[3])))
			
	#Dictionarys to turn local ids (0-X) to db ids and in the other direction
	dev_ids = {}
	dev_dbids = {}
	n = 0
	for room in devices:
		dev_ids[room] = {}
		dev_dbids[room] = {}
		for dev in devices[room]:
			dev_ids[room][dev[0]] = n
			dev_dbids[room][n] = dev[0]
			n=n+1

	return devices, dev_ids, dev_dbids
	

##
#	Get the default rssi value for each link
#	\param cur Database cursor
# 	\param devices Devices info dictionary
#	\param dev_ids Dictionary for turning db ids into local ids
#	\return Dictionary containing all the links rssi default value
def getDefaultRssi(cur, devices, dev_ids):
	query = "SELECT Room_id, dev_1, dev_2, RSSI FROM default_rssi;"
	cur.execute(query)
	result = cur.fetchall()
	default_rssi = {}
	for i in result:
		room_id = int(i[0])
		if default_rssi.get(room_id, None)==None:
			n_devices = len(devices[room_id])
			default_rssi[room_id] = np.zeros((n_devices, n_devices))
		dev_1_id = dev_ids[room_id][int(i[1])]
		dev_2_id = dev_ids[room_id][int(i[2])]
		default_rssi[room_id][dev_1_id, dev_2_id] = i[3];
	return default_rssi;


##
#	Convert the data into a matrix
#	\param data Data object in the format [room, time, (device data)...]
#	\param dev_ids Dictionary for turning db ids into local ids
#	\param devices Devices info dictionary
#	\return Data in matrix format
def dataToMatrix(data, dev_ids, devices):
	room = data[0]
	devs = devices[room]
	n_devs = len(devs)
	mat_data = np.zeros((n_devs, n_devs))
	# Save the data into a matrix
	for i in data[2]:
		origin = i[0]
		destination = i[1]
		rssi = i[2]
		mat_data[dev_ids[room][origin], dev_ids[room][destination]] = rssi
	for i in range(n_devs-1):
		for j in range(i+1, n_devs):
			# Average between the two values for each link
			if(mat_data[i,j]==0):
				mat_data[i, j] = mat_data[j,i];
			elif (mat_data[j,i]==0):
				mat_data[i, j] = mat_data[i,j];
			else:
				mat_data[i, j] = (mat_data[i, j] + mat_data[j, i])/2
	return mat_data
	
##
#	Get the active links from a rssi data and default rssi
#	\param data Data to analyze
# 	\param default_rssi Default rssi values for each link
#	\return List of active link in [local_id, local_id] format
def getActiveLinksAsIds(data, default_rssi, room_id):
	n_devs = len(data)
	links = []
	for i in range(n_devs-1):
		for j in range(i+1, n_devs):
			if abs(data[i,j]-default_rssi[room_id][i,j])>DIFFERENCE and data[i,j]!=0:
				links.append((i,j))
				
	return links
	
##
#	Get the active links from a rssi data and default rssi as points coordinates tuples
#	\param data Data to analyze
# 	\param default_rssi Default rssi values for each link
#	\param dev_ids Dictionary for turning local ids into db ids 
# 	\param devices Devices info dictionary
#	\param room Room id
# 	\return List of active link in [Point, Point] format
def getActiveLinksAsPoints(data, default_rssi, dev_dbids, devices, room):
	links = getActiveLinksAsIds(data, default_rssi, room)
	room_devs = devices[room]
	new_links = []
	for link in links:
		p1_id = dev_dbids[room][link[0]]
		p2_id = dev_dbids[room][link[1]]
		p1 = None
		p2 = None
		for node in room_devs:
			if p1_id==node[0]:
				p1 = Point(node[1], node[2])
			if p2_id==node[0]:
				p2 = Point(node[1], node[2])
		new_link = (p1, p2)
		new_links.append(new_link)
	return new_links
	
##
#	Get the active links from a rssi data and default rssi as LineString objects
#	\param data Data to analyze
# 	\param default_rssi Default rssi values for each link
#	\param dev_ids Dictionary for turning local ids into db ids 
# 	\param devices Devices info dictionary
#	\param room Room id
# 	\return List of active link in Line format
def getActiveLinksAsLines(data, default_rssi, dev_dbids, devices, room):
	links = getActiveLinksAsPoints(data, default_rssi, dev_dbids, devices, room)
	new_links = []
	for link in links:
		new_links.append(LineString([link[0], link[1]]))
	return new_links
		
##
#	Converts a line into a Polygon which includes all the points at a DISTANCE distance
#	from the line
#	\param line Original line
#	\param room_x X size of the room
# 	\param room_y Y size of the room
#	\return Polygon including all the points at a DISTANCE distance from the line
def lineToPolygon(line, room_x, room_y):
	l = line.buffer(DISTANCE)
	room = Polygon([(0,0), (room_x, 0), (room_x, room_y), (0, room_y)])
	l2 = l.intersection(room)
	return l2.simplify(0.05, preserve_topology=False)
	

##
#	Returns the intersection of the polygons obtained from all the links
#	\param links Lista de enlaces activo en formato LineString
#	\param room_x X size of the room
#	\param room_y Y size of the room
#	\return Polygon where the user must be located
def getIntersection(links, room_x, room_y):
	polygon = None
	for link in links:
		if polygon==None:
			polygon = lineToPolygon(link, room_x, room_y)
		else:
			aux_pol = lineToPolygon(link, room_x, room_y)
			polygon = aux_pol.intersection(polygon)
	return polygon
	
	
##
# Save the polygon data into the database
# \param pol Polygon to save 
# \param room Room affected
def saveToDatabase(pol, room):
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	cur.execute('INSERT INTO Data(time, room, position) VALUES(%i, %i, %s)',
		time.time(), room, pickle.dumps(pol))
	db.commit()
	db.close()