__author__ = 'cnoguera'
import sys
lp=[]
for i in range(2,1000,1):
    cont=0
    for j in range(2,i,1):
        if (i%j)==0:
            cont+=1
    if cont==0:
        lp.append(str(i))
r=""
for w in lp:
    if w==w[::-1]:
        r=w
print r
