import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

op=0
a= len(lineas)
for i in range (0 , a):
        m= lineas[i]
        length=len(m)
        for x in range(0, length):
         op= (int(m[x]))+op 
        print op
        op=0
         

        
                
