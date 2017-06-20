__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    num=int(line.rstrip("\n"))
    n=0
    primos=[]
    i=1
    while n<(num-1):
        cont=0
        if 2 in [i,2**i%i]:
            primos.append(i)
        i+=1
        n+=1
    print ",".join(str(i) for i in primos)
file.close()
