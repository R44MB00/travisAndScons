from pip._vendor.distlib.compat import raw_input
in1=int(input())
s=""
for i in range(in1):
    myin=raw_input().split()
    s=s+str(int(myin[0])+int(myin[1]))
    if(i!=(in1-1)): s+=" "
print(s)