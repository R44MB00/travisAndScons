import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a):
        m= lineas[i].split(",")
        n = bin(int(m[0]))
        stri= str(n)
        lenght= len(stri)
        A = int(m[1])
        B = int(m[2])
        U=(stri[lenght-A])       
        W=(stri[lenght-B])
        if U == W:
           print "true"
        else:
           print "false"
     
          
