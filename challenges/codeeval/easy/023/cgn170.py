__author__ = 'cnoguera'
import sys
def printf(format, *args):
    sys.stdout.write(format % args)
x=13
y=13

for i in range(1,x,1):
    for j in range(1,y,1):
        r=(j*i)
        s=""
        if(j!=1):
            if r<10 :
                s="   "
            elif r<100:
                s="  "
            else :
                s=" "
        printf("%s%d",s,r),
    print ""
