__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    l_a=line.rstrip("\n").split(" ")
    for i in range(0,len(l_a[1]),1):
        if l_a[1][i]=="1":
            sys.stdout.write(l_a[0][i].upper())
        else:
            sys.stdout.write(l_a[0][i])
    print ""
file.close()
