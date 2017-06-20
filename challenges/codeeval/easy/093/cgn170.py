__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    for w in line.split(" "):
        if not w[0].isdigit():
            print w[0].upper()+w[1::],
        else:
            print w,
file.close()
