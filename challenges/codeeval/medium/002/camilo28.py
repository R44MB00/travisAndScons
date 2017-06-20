import sys
file = open(sys.argv[1], 'r')
size=0;
list=[]
i=0;
for line in file:
    if i==0:
        size=int(line)
    else:
        list.append(line.rstrip('\n'))
    i+=1
file.close()
list.sort(key=len,reverse=True)
solution=[]
for i in range(0,size,1):
    print list[i]
