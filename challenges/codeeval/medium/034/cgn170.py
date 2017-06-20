__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(";")
    sum=int(lt[1])
    vs=[int(x) for x in lt[0].split(",")]
    r=[]
    for i in range(0,len(vs),1):
        for j in range(0,len(vs),1):
            if i!=j:
                st=vs[i]+vs[j]
                if st==sum:
                    rt=str(vs[i])+","+str(vs[j])
                    ban=1
                    tt=rt.split(",")
                    for xr in r:
                        if tt[1]+","+tt[0]==xr:
                            ban=0
                            break
                    if ban:
                        r.append(rt)
    if r:
        print ";".join(r)
    else:
        print "NULL"
file.close()
