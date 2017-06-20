__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    number=int(line.rstrip("\n"))
    if number%2:
        print 0
    else:
        print 1
file.close()
