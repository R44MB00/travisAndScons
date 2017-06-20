__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(",")
    rb=str(bin(int(lt[0])))[2:]
    a=len(rb)-int(lt[1])
    b=len(rb)-int(lt[2])
    if rb[a]==rb[b]:
        print "true"
    else:
        print "false"
file.close()
