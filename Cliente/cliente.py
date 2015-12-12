##
#	\file File containing client graphical interface. 
#	\author Jose Manuel Herruzo Ruiz

import matplotlib
import sys
from PyQt4 import QtGui, uic
from PyQt4.QtCore import *
from matplotlib.backends.backend_qt4agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt4agg import NavigationToolbar2QTAgg as NavigationToolbar
import matplotlib.pyplot as plt
from matplotlib.path import Path
from matplotlib.figure import Figure
import matplotlib.patches as patches
from shapely.geometry import *
import random
from clientfunctions import *
import clientthread
from datetime import datetime


##
#	Graphical interface class
#	Contains several methods for draw elements in the window
#
class MyWindow(QtGui.QMainWindow):

	update_position = pyqtSignal(object, object)

	##
	# Constructor
	def __init__(self):
		super(MyWindow, self).__init__()
		# Load GUI
		uic.loadUi('main.ui', self)
		
		# a figure instance to plot on
		self.figure = Figure()#plt.figure()
		
		# Get rooms info
		self.rooms = getRoomsInfo()
		for i in self.rooms:
			self.combo_rooms.addItem(self.rooms[i][2])
		
		self.combo_rooms.currentIndexChanged.connect(self.updateRoom)
		
		# this is the Canvas Widget that displays the `figure`
		# it takes the `figure` instance as a parameter to __init__
		self.canvas = FigureCanvas(self.figure)
		self.btn_calibrate.clicked.connect(self.recalibration)
		
		self.btn_getdata.clicked.connect(self.getData)
		
		# set the layout
		layout = QtGui.QVBoxLayout()
		layout.addWidget(self.canvas)
		
		self.map_widget.setLayout(layout)
		self.show()
		
		self.ax = None
		self.patch = None
		
		self.updateRoom(1)
		
		# Initialize real time update thread
		self.thread = clientthread.RealTimeUpdate(self.update_position)
		self.update_position.connect(self.drawPolygon)
		self.thread.start()
		
		# Set auto update check box listener
		self.cb_realtimeupdate.toggled.connect(self.rtupdate)
		
		
		
			
			
	##
	# Set real time update 
	def rtupdate(self):
		if self.cb_realtimeupdate.isChecked():
			self.thread.enable()
			self.btn_getdata.setEnabled(False)
		else:
			self.thread.disable()
			self.btn_getdata.setEnabled(True)
	
	
	
	##
	# Update the room id
	def updateRoom(self, par):
		index = self.combo_rooms.currentIndex()
		self.room = self.rooms.keys()[index]
		self.drawRoom()
	
	##
	# Draw the room perimeter in the graphical
	def drawRoom(self):
		
		if(self.ax!=None):
			self.ax.clear()
	
		# width and height
		self.room_width = self.rooms[self.room][0]
		self.room_height = self.rooms[self.room][1]
		
		# create an axis
		self.ax = self.figure.add_subplot(111)
		
		# discards the old graph
		self.ax.hold(False)
		
		
		# We hide the Axes
		self.figure.axes[0].get_xaxis().set_visible(False)
		self.figure.axes[0].get_yaxis().set_visible(False)
		self.figure.axes[0].set_axis_off()
		self.figure.tight_layout()
		
		
		# Set the size to fit in a square shape
		if(self.room_width>self.room_height):
			self.min_x = 0
			self.max_x = self.room_width
			self.min_y = (self.room_width-self.room_height)/2
			self.max_y = self.room_width-((self.room_width-self.room_height)/2)
		else:
			self.min_x = (self.room_height-self.room_width)/2
			self.max_x = self.room_height-((self.room_height-self.room_width)/2)
			self.min_y = 0
			self.max_y = self.room_height
			
		# Draw the polygon
		codes = [Path.MOVETO,
				Path.LINETO,
				Path.LINETO,
				Path.LINETO,
				Path.CLOSEPOLY,
				]
		verts = [
				(self.min_x, self.min_y), # left, bottom
				(self.min_x, self.max_y), # left, top
				(self.max_x, self.max_y), # right, top
				(self.max_x, self.min_y), # right, bottom
				(self.min_x, self.min_y), # ignored
				]
		
		path = Path(verts, codes)
		patch = patches.PathPatch(path, facecolor='White', lw=2)
		self.ax.set_xlim(0, max(self.room_width, self.room_height))
		self.ax.set_ylim(0, max(self.room_width, self.room_height))
		self.ax.add_patch(patch)

		
		# refresh canvas
		self.canvas.draw()
	
	##
	#	Draw a polygon inside the room, in the graphical
	#	\param pol Polygon to draw (Values in cm)
	def drawPolygon(self, pol, time):
		self.lb_time.setText(str(time))
		if self.patch != None:
			self.patch.remove()
		
		x_coord = pol.exterior.coords.xy[0]
		y_coord = pol.exterior.coords.xy[1]
		verts = []
		for i in range(len(x_coord)):
			verts.append((x_coord[i]+self.min_x, y_coord[i]+self.min_y))
		codes = [Path.MOVETO]
		for i in range(len(x_coord)-2):
			codes.append(Path.LINETO)
		codes.append(Path.CLOSEPOLY)
		path = Path(verts, codes)
		self.patch = patches.PathPatch(path, facecolor='Red', lw=0)
		self.ax.add_patch(self.patch)
		self.canvas.draw()
		
		
	##
	# Event executed when the get data button is pushed
	# This method will update the graphic to the nearest position read before the
	# selected date and time
	def getData(self):
		qdate = self.select_date.selectedDate()
		qtime = self.select_time.time()
		pydatetime = datetime(qdate.year(), qdate.month(), qdate.day(),
								qtime.hour(), qtime.minute(), qtime.second())
								
		polygon, pol_date = getPositionByDate(pydatetime)
		
		if polygon==None:
			self.lb_time.setText('No hay datos previos')
			if self.patch != None:
				self.patch.remove()
				self.patch = None
		else:
			self.drawPolygon(polygon, pol_date)
			
		
	def recalibration(self):
		recalibration(self.room)
		
		
	##
	# Event executed when the window is closed 
	def closeEvent(self, event):
		self.thread.prepareToClose()
			
			
		

if __name__ == '__main__':
	app = QtGui.QApplication(sys.argv)
	window = MyWindow()
	
	window.getData()
	
	sys.exit(app.exec_())