import re
in1=int(input())
res=[]
for k in range(in1):
    A=0
    B=0
    N=0
    r=0
    in2=input()
    z=re.findall("\d+|\d+|\d+",in2) #z's got the values
    N=int(z[2])
    for i in range(N):
        A=int(z[0])
        B=i*(int(z[1]))
        r=r+A+B
    res.append(r)
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")
fin=input("\nPresione enter para terminar")
