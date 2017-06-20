__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    la=line.rstrip("\n").split(" ")
    lr=[]
    for w in la:
        if w!="":
            wr=""
            wr+=w[0]
            for i in range(1,len(w),1):
                if w[i-1]!=w[i]:
                    wr+=w[i]
            lr.append(wr)
    print " ".join(lr)
file.close()
