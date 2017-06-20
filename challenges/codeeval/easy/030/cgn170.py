__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    l_t=line.rstrip("\n").split(";")
    l_a=l_t[0].split(",")
    l_b=l_t[1].split(",")
    l_r=[]
    for a in l_a:
        for b in l_b:
            if a==b:
                l_r.append(a)
    sys.stdout.write(",".join(l_r)+"\n")
file.close()
