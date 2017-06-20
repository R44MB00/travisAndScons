__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
   print line.lower().rstrip("\n")
file.close()
