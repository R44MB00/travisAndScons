from pip._vendor.distlib.compat import raw_input
in1=int(input())
a=[]
b=[]
for i in range(in1):
    in2=raw_input()
    z=in2.split(' ')
    x1=int(z[0])
    y1=int(z[1])
    x2=int(z[2])
    y2=int(z[3])
    m=int((y2-y1)/(x2-x1))
    a.append(m)
    b.append(int(y1-x1*((y2-y1)/(x2-x1))))
for i in range(len(a)):
    print("("+str(a[i])+" "+str(b[i])+")",end="")
    if(i!=(len(a)-1)):
        print(" ",end="")