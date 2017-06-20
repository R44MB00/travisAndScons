from pip._vendor.distlib.compat import raw_input
in1=raw_input().split()
a=int(in1[0])
k=int(in1[1])
abcd="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
s=""
for i in range(a):
    Myline=raw_input()
    for j in range(len(Myline)):
        if(Myline[j]=="."):
            s+="."
            if(i!=(a-1)): s+=" "
        elif(Myline[j]==" "):
            s+=" "
        else:
            ind=abcd.find(Myline[j])-k
            if(ind<0): ind+=26
            s+=abcd[ind]
print(s)