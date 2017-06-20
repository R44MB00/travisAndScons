__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
hidden={'a':0,'b':1,'c':2,'d':3,'e':4,'f':5,'g':6,'h':7,'i':8,'j':9}
for line in file:
    cont=0
    for i in range(0,len(line.rstrip("\n")),1):
        if line[i] in hidden:
            sys.stdout.write(str(hidden[line[i]]))
            cont+=1
        elif line[i].isdigit() and int(line[i])>=0 and int(line[i])<=9:
            sys.stdout.write(str(line[i]))
            cont+=1
    if cont==0:
        print "NONE",
    print
file.close()
