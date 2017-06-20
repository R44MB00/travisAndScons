__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split("|")
    lw=lt[0].rstrip(" ").split(" ")
    g=lt[1].lstrip(" ")
    contf=0
    for i in lw:
        cont=0
        for j in range(0,len(i),1):
            if i[j] in g:
                cont+=1
        if cont>=len(g):
            print i,
            contf+=1
    if contf==0:
        print "False",
    print
file.close()
