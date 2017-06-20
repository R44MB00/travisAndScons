__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    nz=int(lt[0])
    nb=int(lt[1])
    cont=0
    for i in range(1,nb+1,1):
        binary=bin(i)[2::]
        if len(re.findall('0',binary))==nz:
            cont+=1
    print cont
file.close()
