import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a):

        m= lineas[i].split()
        length = len (m)
        for j in range (0, length): 
          print m [length -j -1],
        print 
     
