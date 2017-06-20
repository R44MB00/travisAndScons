__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
lp=[]
for i in range(2,1000,1):
    cont=0
    for j in range(2,i,1):
        if (i%j)==0:
            cont+=1
    if cont==0:
        lp.append(i)
for line in file:
    lt=line.rstrip("\n").split(",")
    a=int(lt[0])
    b=int(lt[1])
    r=0
    for i in range(0,len(lp),1):
        if lp[i]>=a and lp[i]<=b:
            r+=1
    print r
file.close()

