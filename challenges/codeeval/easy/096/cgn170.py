__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    l_a=line.rstrip("\n").split(" ")
    r=[]
    for i in l_a:
        s=""
        for j in range(0,len(i),1):
            if i[j].isupper():
               s=s+i[j].lower()
            else:
                s=s+i[j].upper()
        r.append(s)
    sys.stdout.write(" ".join(r)+"\n")
file.close()
