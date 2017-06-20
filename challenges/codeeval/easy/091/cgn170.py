__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    list=[float(x) for x in line.rstrip("\n").split(" ")]
    print " ".join(format(x,".3f") for x in sorted(list))
file.close()
