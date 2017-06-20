__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=[int(i) for i in line.rstrip("\n").split(" ")]
    tt=len(lt)
    lr={}
    i=0
    while i<tt:
        cont=1
        for j in range(i+1,tt,1):
            if lt[i]==lt[j]:
                cont+=1
            else:
                break
        lr[lt[i]]=cont
        print str(cont)+" "+str(lt[i]),
        i+=cont
    print
file.close()
