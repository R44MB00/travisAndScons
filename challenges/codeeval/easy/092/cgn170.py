__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    l_a=line.rstrip("\n").split(" ")
    print l_a[len(l_a)-2]
file.close()
