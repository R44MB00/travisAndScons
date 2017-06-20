import re
import math
in1=int(input())
res=[]
for k in range(in1):
    in2=input()
    z=re.findall("\d+|\d+|\d+",in2) #z's got the values
    for i in range(len(z)):
        flag=0
        for j in range(len(z)):
            if(z[i]>z[j]): flag+=1
        if(flag==0):
            a=int(z[i])
        elif(flag==(len(z)-1)):
            c=int(z[i])
        else:
            b=int(z[i])
    A=(b*b+c*c-a*a)/(2*b*c)
    try: A=math.degrees(math.acos(A))
    except: A=0
    B=(a*a+c*c-b*b)/(2*a*c)
    try: B=math.degrees(math.acos(B))
    except: B=0
    C=(a*a+b*b-c*c)/(2*a*b)
    try: C=math.degrees(math.acos(C))
    except: C=0
    #print(A,B,C,A+B+C,"\n")
    if((A+B+C)>=179):
        res.append(1)
    else:
        res.append(0)
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")