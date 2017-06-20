__author__ = 'cnoguera'
import sys
import re

file = open(sys.argv[1],'r')
for line in file:
    count=0
    for i in range(0,len(line),1):
        if line.startswith(">>-->",i):
            count+=1
    for i in range(0,len(line),1):
        if line.startswith("<--<<",i):
            count+=1
    print count
file.close()
