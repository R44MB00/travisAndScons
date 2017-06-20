__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split("|")
    la=lt[0].rstrip(" ")
    lb=lt[1].lstrip(" ")
    cont=0
    for i in range(0,len(la),1):
        if la[i]!=lb[i]:
            cont+=1
    if cont==0:
        print "Done"
    if cont>0 and cont<=2:
        print "Low"
    if cont>2 and cont<=4:
        print "Medium"
    if cont>4 and cont<=6:
        print "High"
    if cont>6:
        print "Critical"
file.close()
