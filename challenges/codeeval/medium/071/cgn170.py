__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(";")
    ll=lt[0].split(",")
    nr=int(lt[1])
    rl=[]
    i=0
    while i<len(ll):
        t=i+nr
        if t<=len(ll):
            rt=[]
            for j in range(i,t,1):
                rt.append(ll[j])
            rt.reverse()
            for j in rt:
                rl.append(j)
            i=t
        else:
            rl.append(ll[i])
            i+=1
    print ",".join(rl)
file.close()
