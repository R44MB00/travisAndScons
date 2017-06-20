__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(" ")
    i=0
    lr=[]
    while i<len(lt):
        if lt[i]=="00":
            lr.append("1"*len(lt[i+1]))
        else:
            lr.append("0"*len(lt[i+1]))
        i+=2
    print int("".join(lr),2)
file.close()
sys.st
