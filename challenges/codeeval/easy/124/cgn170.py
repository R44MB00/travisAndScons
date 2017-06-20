__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(";")
    lr=[]
    for i in lt:
        if i:
            w=i.split(",")
            lr.append(int(w[1]))
    lr=sorted(lr)
    lrf=[lr[0]]
    for i in range(1,len(lr),1):
        lrf.append(lr[i]-lr[i-1])
    print ",".join(str(x) for x in lrf)
file.close()
