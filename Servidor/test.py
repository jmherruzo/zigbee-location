import socket
import sys
import pickle
import SocketServer
import MySQLdb
import numpy as np
from threading import Thread
from staticdata import *
from serverfunctions import *

st = "Hola%d%d"
st2 = st%(10,10)
print st2
db = MySQLdb.connect(
	host = DBHOST,
	user = DBUSER,
	passwd = DBPWD,
	db = DB
)
cur = db.cursor()
a, b, c = getDevicesInfo(cur)
d = getDefaultRssi(cur, a, b)
d[27][0][1] = -63
print len(d[27])
n_devs = len(d[27])
for i in range(n_devs-1):
	for j in range(i+1, n_devs):
		d[27][i][j] = -63
saveDefaultRssi(d[27], 27, c)
print a
print b
print c
print d[27]