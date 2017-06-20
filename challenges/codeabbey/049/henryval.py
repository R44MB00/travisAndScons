in1=int(input())
res=[]
for i in range(in1):
    str=input().split(' ')
    l=len(str)-1
    if(str[l]=="SP"):
        res.append(1)
    elif(str[l]=="PR"):
        res.append(1)
    elif(str[l]=="RS"):
        res.append(1)
    else:
        res.append(2)
for j in range(len(res)):
    print(res[j],end="")
    if(j!=(len(res)-1)):
        print(" ",end="")