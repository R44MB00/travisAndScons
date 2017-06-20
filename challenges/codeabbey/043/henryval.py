import re
in1=int(input())
res=[]
for k in range(in1):
    in2=input()
    z=re.findall("\d+\.\d+",in2)
    z=[float(i) for i in z]
    res.append(int(6*z[0])+1)
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")