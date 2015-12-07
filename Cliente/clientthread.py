from staticdata import *
from clientfunctions import *
import MySQLdb
import threading
import time

update_time = 5

## 
# Thread for updating the user position when it is updated in the database
# 
class RealTimeUpdate(threading.Thread):

	##
	# Constructor
	# \param update_method Method por interface updating
	# This method will receive as parameters a polygon and the time
	def __init__(self, update_signal):
		threading.Thread.__init__(self)
		self.running = True
		self.close = False
		self.update_signal = update_signal
		
	##
	# Run method
	def run(self):
		last_time = None
		while(not self.close):
			if(self.running):
				#Check database
				actual_time = getLastPositionTime()
				if(last_time==None or last_time!=actual_time):
					position = getLastPosition()
					self.update_signal.emit(position, actual_time)
					last_time = actual_time
			time.sleep(update_time)
			
	##
	# Disable the thread execution
	def disable(self):
		self.running = False
		
	##
	# Enable the thread execution
	def enable(self):
		self.running = True
		
	##
	# Close the thread
	def prepareToClose(self):
		self.close = True