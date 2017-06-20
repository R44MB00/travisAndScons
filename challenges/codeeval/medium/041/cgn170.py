__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(";")
    n=int(lt[0])
    la=[int(x) for x in lt[1].split(",")]
    for i in range(0,n,1):
        cont=0
        for j in range(0,n,1):
            if la[i]==la[j]:
                cont+=1
        if cont==2:
            r=la[i]
    print r
file.close()
