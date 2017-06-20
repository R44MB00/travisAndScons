from __future__ import division
__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    w=line.rstrip("\n")
    cu=0
    cl=0
    t=len(w)
    for i in range(0,t,1):
        if w[i].isupper():
            cu+=1
        else:
            cl+=1
    print "lowercase: "+"{0:.2f}".format(cl/t*100)+" uppercase: "+"{0:.2f}".format(cu/t*100)
file.close()
