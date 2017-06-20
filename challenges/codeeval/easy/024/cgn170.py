__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
total=0
for line in file:
   total += int(line)

print total;
file.close()
