__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
    list=line.rstrip("\n").split(":")
    list1=list[0].rstrip(" ").split(" ")
    list2=list[1].lstrip(" ").split(",")
    for swap in list2:
        ls=swap.split("-")
        ia=int(ls[0])
        ib=int(ls[1])
        a=list1[ia]
        b=list1[ib]
        list1[ia]=b
        list1[ib]=a
    print " ".join(list1)
file.close()
