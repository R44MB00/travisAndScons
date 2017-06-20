in1=int(input())
res=[]
a=[]
in2=input()
a=[int(s) for s in (str(in2)).split() if s.isdigit()]
for i in range(len(a)):
    dig=0
    r=0
    flag=False
    dec=10000000000
    while(dec>0.9):
        if(int(((a[i]/dec)%10))>0):
            flag=True
        if(flag==True):
            if(dec==1):
                dig+=1
                r=r+int(((a[i]/dec)%10))*dig
                flag=False
            if(dec!=1):
                dig+=1
                r=r+int(((a[i]/dec)%10))*dig
        dec/=10
    res.append(r)
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")