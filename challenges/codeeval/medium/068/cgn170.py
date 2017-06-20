__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    se=line.rstrip("\n")
    r=line.split("")
    ban=False
    for i in range(0,len(se),1):
        if se[i] in ['(','[','{']:
            for j in range(i+1,len(se),1):
                if se[j] in [')',']','}']:

                    ban=True
                    break
                else:
                    ban=False
    if ban:
        print "True"
    else:
        print "False"

file.close()
