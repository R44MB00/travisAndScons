import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a): 
        m= lineas[i].split() 
        A =  int(m[0])
        B =  int(m[1])
        limit = int (m[2])
       
        for s in range (1, (limit +1)):
            
             if ((s % A) == 0) & ((s % B) ==0):
              print ("FB"),
             elif (s % A) == 0 :
              print ("F"), 
             elif (s % B) ==0 :
              print ("B"),
             else:
              print s,
              
        print         



