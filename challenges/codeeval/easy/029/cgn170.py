__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    list1=sorted(list(set(list(line.rstrip("\n").split(",")))))
    sys.stdout.write(",".join(list1))
    print ""
file.close()
