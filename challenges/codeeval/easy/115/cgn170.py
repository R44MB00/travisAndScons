__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    l_a=line.rstrip("\n").split(",")
    d=[]
    s=[]
    for w in l_a:
        if w.isdigit():
            d.append(w)
        else:
            s.append(w)
    if s:
        sys.stdout.write(",".join(s))
    if s and d:
        print "|",
    if d:
        sys.stdout.write(",".join(d))
    print ""
file.close()
