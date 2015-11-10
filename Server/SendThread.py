##
#	\file Thread for sending info to the server
#	\author Jose Manuel Herruzo Ruiz

import socket
import threading
import pickle

##
#	Thread which open a socket and send the data to the server for
# 	get the position and save it
#
class SendThread(threading.Thread):
	##
	#	Constructor
	#	\param host Server address
	# 	\param port Server port to connect
	#	\param data Data to send
	def __init__(self, host, port, data):
		threading.Thread.__init__(self)
		self.host = host
		self.port = port
		self.data = data
		
	##
	# Run method
	def run(self):
		s = None
		for res in socket.getaddrinfo(
						self.host, 
						self.port, 
						socket.AF_UNSPEC, 
						socket.SOCK_STREAM):
			af, socktype, proto, canonname, sa = res
			try:
				s = socket.socket(af, socktype, proto)
			except socket.error as msg:
				s = None
				continue
			try:
				s.connect(sa)
			except socket.error as msg:
				s.close()
				s = None
				continue
    			break
		if s is None:
			print 'Could not open socket'
			return
		send_data = pickle.dumps(self.data)
		s.sendall(send_data)
		s.close()