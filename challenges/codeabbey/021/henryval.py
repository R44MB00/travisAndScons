in1=input()
x=[int(s) for s in (str(in1)).split() if s.isdigit()]
M=x[0]
N=x[1]
res=[]
for k in range(N): res.append(0)
in2=input()
z=[int(s) for s in (str(in2)).split() if s.isdigit()]
for j in range(N):
    for i in range(len(z)):
        if(z[i]==(j+1)):
            res[j]+=1
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")