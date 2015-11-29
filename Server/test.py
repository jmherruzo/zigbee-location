import socket
import sys
import pickle
import SocketServer
import MySQLdb
import numpy as np
from threading import Thread
from staticdata import *
from serverfunctions import *

pol = Polygon([(0,0), (10, 0), (10, 10), (0, 10)])
saveToDatabase(pol, 27)