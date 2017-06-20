__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    st=line.rstrip("\n")
    fw=st[0]
    ss=""
    cont=0
    for i in range(0,len(st),1):
        if st[i]==fw and i!=0:
            break
        ss+=st[i]
        cont+=1
    print cont
file.close()
