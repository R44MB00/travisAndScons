import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a):
        m= lineas[i].split(",")
        A =  int(m[0])
        B = int(m[1])
        div= A/B
        if A%B == 0:
           print A
        else:   
           p= B *(div +1)  
           print p     
print
        
