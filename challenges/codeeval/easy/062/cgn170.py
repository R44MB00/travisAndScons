__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(",")
    a=int(lt[0])
    b=int(lt[1])
    mod=0
    if b>a:
        mod=a
    else:
        r=a/b
        mod=a-(r*b)
    print mod
file.close()
