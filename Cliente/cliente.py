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

width = 257
height = 203


##
#	Graphical interface class
#	Contains several methods for draw elements in the window
#
class MyWindow(QtGui.QMainWindow):
	##
	# Constructor
	def __init__(self):
		super(MyWindow, self).__init__()
		# Load GUI
		uic.loadUi('main.ui', self)
		
		# a figure instance to plot on
		self.figure = Figure()#plt.figure()
		
		
		
		# this is the Canvas Widget that displays the `figure`
		# it takes the `figure` instance as a parameter to __init__
		self.canvas = FigureCanvas(self.figure)
		
		self.btn_update.clicked.connect(self.drawRoom)
		
		# set the layout
		layout = QtGui.QVBoxLayout()
		layout.setGeometry(QRect(0,0,203, 257))
		layout.addWidget(self.canvas)
		self.map_widget.setLayout(layout)
		self.show()
			
	##
	# Draw the room perimeter in the graphical
	def drawRoom(self):
		# random data
		#data = [random.random() for i in range(10)]
		
		# create an axis
		self.ax = self.figure.add_subplot(111)
		
		# discards the old graph
		self.ax.hold(False)
		
		
		# We hide de Axes
		self.figure.axes[0].get_xaxis().set_visible(False)
		self.figure.axes[0].get_yaxis().set_visible(False)
		self.figure.axes[0].set_axis_off()
		self.figure.tight_layout()
		
		
		if(self.room_width>self.room_height):
			self.min_x = 0
			self.max_x = self.room_width
			self.min_y = (self.room_width-self.room_height)/2
			self.max_y = self.room_width-((self.room_width-self.room_height)/2)
		else:
			self.min_x = (self.room_height-self.room_width)/2
			self.max_x = self.room_height-((self.room_height-self.room_width)/2)
			self.min_y = 0
			self.min_y = self.room_height
			
		
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
		self.ax.set_xlim(0, max(width, height))
		self.ax.set_ylim(0, max(width, height))
		self.ax.add_patch(patch)
		print codes
		print verts

		
		# refresh canvas
		self.canvas.draw()
	
	##
	#	Draw a polygon inside the room, in the graphical
	#	\param pol Polygon to draw (Values in cm)
	def drawPolygon(self, pol):
		x_coord = pol.exterior.coords.xy[0]
		y_coord = pol.exterior.coords.xy[1]
		verts = []
		for i in range(len(x_coord)):
			verts.append((x_coord[i], y_coord[i]))
		codes = [Path.MOVETO]
		for i in range(len(x_coord)-2):
			codes.append(Path.LINETO)
		codes.append(Path.CLOSEPOLY)
		print codes
		print verts
		path = Path(verts, codes)
		patch = patches.PathPatch(path, facecolor='Red', lw=0)
		self.ax.add_patch(patch)
		self.canvas.draw()
			
			
		

if __name__ == '__main__':
	app = QtGui.QApplication(sys.argv)
	window = MyWindow()
	window.room_width = width
	window.room_height = height
	window.drawRoom()
	polygon = Polygon(((50, 50),(100, 50),(100,100),(50,100),(50, 50)))
	window.drawPolygon(polygon)
	sys.exit(app.exec_())