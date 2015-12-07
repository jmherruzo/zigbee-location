import numpy as np;
import MySQLdb
from staticdata import *
from shapely.geometry import *
import time
import pickle

##
# Convert a string to a polygon. The String must be in the format
# x1 y1,x2 y2,x3 y3
# \param str Original string to convert
# \return Polygon with the information in the string
def strToPol(str):
	data = str.split(',')
	list_result = []
	for i in data:
		point = i.split(' ')
		x_coord = point[0]
		y_coord = point[1]
		list_result.append((float(x_coord), float(y_coord)))
	return Polygon(tuple(list_result))

##
# Get the last obtained position in the room
# \return Polygon containing last position in the room
def getLastPosition():
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	query = 'SELECT position From Data WHERE time = (select MAX(time)from Data);'
	cur.execute(query)
	result = cur.fetchall()
	db.commit()
	db.close()
	return strToPol(result[0][0])
	
##
# Get the last obtained position in the room
# \return Time of the last position obtained
def getLastPositionTime():
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	query = 'SELECT time From Data WHERE time = (select MAX(time)from Data);'
	cur.execute(query)
	result = cur.fetchall()
	db.commit()
	db.close()
	return result[0][0]
	
	
## Prepare a recalibration
#
def recalibration():
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	cur.execute('INSERT INTO Recalibration(done) VALUES(FALSE);')
	db.commit()
	db.close()
	

	
##
#	Gets the rooms x and y size
#	\param cursor Database cursor
#	\return Rooms dictionary containing x and y size
def getRoomsInfo():
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	query = "SELECT id, x, y, alias FROM Room;"
	cur.execute(query)
	result = cur.fetchall()
	db.commit()
	db.close()
	
	rooms = {}
	for room in result:
		rooms[int(room[0])] = [int(room[1]), int(room[2]), room[3]]
	return rooms
	
	
##
# Get the nearest position to the desired date and time
# \param date Date which want to be consulted
# \return Position polygon and time
def getPositionByDate(date):
	db = MySQLdb.connect(
        host = DBHOST,
        user = DBUSER,
        passwd = DBPWD,
        db = DB
	)
	cur = db.cursor()
	str_date = date.strftime('%Y-%m-%d %H:%M:%S')
	query = 'SELECT position, time From Data WHERE time = (select MAX(time) from Data'
	query = query + ' WHERE time < \'' + str_date + '\' );'
	cur.execute(query)
	result = cur.fetchall()
	db.commit()
	db.close()
	if(len(result)>0):
		return strToPol(result[0][0]), result[0][1]
	else:
		return None, None