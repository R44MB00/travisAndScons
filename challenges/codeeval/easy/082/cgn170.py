__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n")
    num=int(lt)
    p=len(lt)
    sf=0
    for i in range(0,p,1):
        sf+=int(lt[i])**p
    if sf==num:
        print "True"
    else:
        print "False"
file.close()
