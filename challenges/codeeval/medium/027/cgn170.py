__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    num=int(line.rstrip("\n"))
    print str(bin(num))[2:]
file.close()
