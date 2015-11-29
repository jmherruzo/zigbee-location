import numpy as np;
import MySQLdb
from staticdata import *
from shapely.geometry import *
import time
import pickle


def strToPol(str):
	data = str.split(',')
	list_result = []
	for i in data:
		point = i.split(' ')
		x_coord = point[0]
		y_coord = point[1]
		list_result.append((float(x_coord), float(y_coord)))
	return Polygon(tuple(list_result))

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