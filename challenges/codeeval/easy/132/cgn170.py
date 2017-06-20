__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=[int(i) for i in line.rstrip("\n").split(",")]
    lr={}
    for i in set(lt):
        lr[i]=0
    i=0
    while i<len(lt)-1:
        if lt[i]==lt[i+1]:
            des=1
            for j in range(i+1,len(lt),1):
                if lt[i]==lt[j]:
                    des+=1
                else:
                    break
            lr[lt[i]]+=des
            i+=des
        else:
            i+=1

    tt=len(lt)/2
    ban=True
    for key,val in lr.iteritems():
        if val>tt:
            ban=False
            print key
    if ban:
        print "None"
file.close()
