__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    la=line.rstrip("\n").split(",")
    if la[0]:
        ef=""
        for i in range(0,len(la[1]),1):
            if la[1][i]=="*" and la[1][i-1]!="\\":
                ef+="."+la[1][i]
            else:
                ef+=la[1][i]
        la[1]=ef
        if re.search(la[1], la[0]):
            print "true"
        else:
            print "false"
file.close()
