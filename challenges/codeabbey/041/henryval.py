in1=int(input())
res=[]
a=[]
for k in range(in1):
    in2=input()
    a=[int(s) for s in (str(in2)).split() if s.isdigit()]
    r=0
    if(((a[1]>a[0]) & (a[0]>a[2])) | ((a[2]>a[0]) & (a[0]>a[1]))): r=a[0]
    if(((a[0]>a[1]) & (a[1]>a[2])) | ((a[2]>a[1]) & (a[1]>a[0]))): r=a[1]
    if(((a[1]>a[2]) & (a[2]>a[0])) | ((a[0]>a[2]) & (a[2]>a[1]))): r=a[2]
    res.append(r)
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")