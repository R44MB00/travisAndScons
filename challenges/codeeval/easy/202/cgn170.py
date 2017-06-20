__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    list=line.rstrip("\n").split(" ")
    max=0;
    w=""
    for x in list:
        if len(x)>max:
            max=len(x)
            w=x
    r=[]
    for i in range(0,len(w),1):
        r.append("*"*i+w[i])
    print " ".join(r)
file.close()
