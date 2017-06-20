in1=int(input())
res=[]
a=[]
for k in range(in1):
    in2=input()
    a=[int(s) for s in (str(in2)).split() if s.isdigit()]
    r=0
    for i in range(len(a)-1):
        r=r+a[i]
    res.append(r/(len(a)-1))
for h in range(len(res)):
    print(int(round(res[h])),end="")
    if(h!=(len(res)-1)): print(" ",end="")