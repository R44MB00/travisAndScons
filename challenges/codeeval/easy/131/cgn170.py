__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    op=lt[1].find('+')
    ban=1
    if op<0:
        op=lt[1].find('-')
        ban=0
    r1=""
    for i in range(0,op,1):
        r1=r1+lt[0][i]
    r2=""
    for i in range(op,len(lt[0]),1):
        r2=r2+lt[0][i]
    if ban:
        print int(r1)+int(r2)
    else:
        print int(r1)-int(r2)
file.close()
