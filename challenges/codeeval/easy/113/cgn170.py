__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    list=line.rstrip("\n").split("|")
    list1=[int(x) for x in list[0].rstrip(" ").split(" ")]
    list2=[int(x) for x in list[1].lstrip(" ").split(" ")]
    l=[]
    for i in range(0,len(list1),1):
        x=list1[i]*list2[i]
        l.append(x)
    print " ".join(str(x) for x in l)
file.close()
