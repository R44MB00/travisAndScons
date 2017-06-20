__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split("|")
    p=lt[0].rstrip(" ").split(" ")
    n=int(lt[1])
    while len(p)>1:
        r=n
        while r>len(p):
            r=r-len(p)
        p.remove(p[r-1])
    print p[0]
file.close()
