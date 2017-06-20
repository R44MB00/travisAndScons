__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    result=re.findall("[a-zA-Z]+",line)
    print " ".join(x.lower() for x in result)
file.close()
