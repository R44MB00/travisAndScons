__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    x1=lt[0].strip("(").strip(",")
    y1=lt[1].strip(")")
    x2=lt[2].strip("(").strip(",")
    y2=lt[3].strip(")")
    x1=int(x1)
    x2=int(x2)
    y1=int(y1)
    y2=int(y2)
    r=((x2-x1)**2+(y2-y1)**2)**0.5
    print int(r)
file.close()
