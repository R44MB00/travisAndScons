__author__ = 'cnoguera'
import sys
from datetime import datetime
file = open(sys.argv[1],'r')
for line in file:
    hours=line.rstrip("\n").split(" ")
    ft="%H:%M:%S"
    if datetime.strptime(hours[0],ft) > datetime.strptime(hours[1],ft):
        delta=str(datetime.strptime(hours[0],ft) - datetime.strptime(hours[1],ft))
    else:
        delta=str(datetime.strptime(hours[1],ft) - datetime.strptime(hours[0],ft))
    if len(delta)<8:
        print "0"+delta
    else:
        print delta
file.close()
