import matplotlib
import sys
from PyQt4 import QtGui, uic
from matplotlib.backends.backend_qt4agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt4agg import NavigationToolbar2QTAgg as NavigationToolbar
import matplotlib.pyplot as plt
import random

class MyWindow(QtGui.QMainWindow):
	def __init__(self):
		super(MyWindow, self).__init__()
		uic.loadUi('main.ui', self)	
		# a figure instance to plot on
		self.figure = plt.figure()
		# this is the Canvas Widget that displays the `figure`
		# it takes the `figure` instance as a parameter to __init__
		self.canvas = FigureCanvas(self.figure)
		self.btn_update.clicked.connect(self.plot)
		# set the layout
		layout = QtGui.QVBoxLayout()
		layout.addWidget(self.canvas)
		self.map_widget.setLayout(layout)
		self.show()
			
	def plot(self):
		# random data
		data = [random.random() for i in range(10)]
		# create an axis
		ax = self.figure.add_subplot(111)
		# discards the old graph
		ax.hold(False)
		# plot data
		ax.plot(data, '*-')
		# refresh canvas
		self.canvas.draw()

if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)
    window = MyWindow()
    sys.exit(app.exec_())