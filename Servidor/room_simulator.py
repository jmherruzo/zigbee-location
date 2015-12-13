import socket
import threading
import pickle
import calendar
import time

HOST = 'localhost'
PORT = 50007


for res in socket.getaddrinfo(
				HOST, 
				PORT, 
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

data = []
devices = [65,66,67,68,69,70,71,72]
n_devs = len(devices)
for i in range(n_devs-1):
	for j in range(i+1, n_devs):
		if(devices[i] == 65 and devices[j] == 72):
			data.append((devices[i], devices[j], -69, 0))
		elif(devices[i] == 66 and devices[j] == 68):
			data.append((devices[i], devices[j], -69, 0))
		elif(devices[i] == 66 and devices[j] == 71):
			data.append((devices[i], devices[j], -69, 0))
		elif(devices[i] == 70 and devices[j] == 72):
			data.append((devices[i], devices[j], -69, 0))
		else:
			data.append((devices[i], devices[j], -63, 0))
now =  calendar.timegm(time.gmtime())
data = [27, now, data]
print data
		


send_data = pickle.dumps(data)
s.sendall(send_data)
s.close()