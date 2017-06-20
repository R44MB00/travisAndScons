__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    la=line.rstrip("\n").split(",")
    lr=[]
    for w in la[0].split(" "):
        wr=""
        for i in range(0,len(w),1):
            if not w[i] in list(la[1].strip(" ")):
                wr+=w[i]
        lr.append(wr)
    print " ".join(lr)
file.close()
