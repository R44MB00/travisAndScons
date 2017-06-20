__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    val=0
    for i in xrange(0,len(line.rstrip("\n"))):
        val=val+int(line[i])
    print val
file.close()
