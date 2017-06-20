__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    we=line.rstrip("\n")
    sys.stdout.write(we+"\n")
    if re.match("^[a-zA-Z0-9\.\+\-\_]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$",we):
        print "true"
    else:
        print "false"
file.close()
