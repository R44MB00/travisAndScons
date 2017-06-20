__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    l_a=line.rstrip("\n").split(" ")
    l_r=[]
    ban=1
    for w in l_a:
        w_r=""
        for i in range(0,len(w),1):
            if(re.search("[a-zA-Z]",w[i])):
                if ban:
                    w_r=w_r+w[i].upper()
                    ban=0
                else:
                    w_r=w_r+w[i].lower()
                    ban=1
            else:
                w_r=w_r+w[i]
        l_r.append(w_r)
    print " ".join(l_r)
file.close()
