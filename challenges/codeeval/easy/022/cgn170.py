__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    num=int(line.rstrip("\n"))
    f=[0,1]
    if(num>1):
        for i in range(2,num+1,1):
            f.append(f[i-1]+f[i-2])
        print f[len(f)-1]
    if num==1:
        print 1
    if num==0:
        print 0
file.close()
