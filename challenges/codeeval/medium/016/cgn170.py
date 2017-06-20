__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    num=int(line.rstrip("\n"))
    sb="{0:b}".format(num)
    r=0
    for i in range(0,len(sb),1):
        if sb[i]=='1':
            r+=1
    print r
file.close()
