__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    for i in lt:
        if i.isdigit():
            ni=int(i)
            lt.remove(i)
    if ni<=len(lt):
        print lt[-ni]
file.close()
