__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n")
    rl=[]
    for i in range(0,len(lt),1):
        cont=0
        for j in range(0,len(lt),1):
            if lt[i]==lt[j]:
                cont+=1
        if cont==1:
            rl.append(lt[i])
    print rl[0]
file.close()
