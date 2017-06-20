__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
   print int("0x"+line.rstrip("\n"),0)
file.close()
