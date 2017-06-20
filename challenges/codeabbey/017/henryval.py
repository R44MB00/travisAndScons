in1=int(input())
res=[]
in2=input()
result=0
seed=113
limit=10000007
z=[int(s) for s in (str(in2)).split() if s.isdigit()]
for i in range(len(z)):
    result=((result+z[i])*seed)%limit
print(result)