__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    lr=[]
    for i in lt:
        tmp=[]
        tmp.append(i[len(i)-1])
        tmp.append(i[1:len(i)-1])
        tmp.append(i[0])
        lr.append("".join(tmp))
    print " ".join(lr)
file.close()
