import sys
import math

def isPower (num):
    power = int (math.log (num, 2) + 0.5)
    return 2 ** power == num

def is_prime(n):
  if n == 2 or n == 3: return True
  if n < 2 or n%2 == 0: return False
  if n < 9: return True
  if n%3 == 0: return False
  r = int(n**0.5)
  f = 5
  while f <= r:
    if n%f == 0: return False
    if n%(f+2) == 0: return False
    f +=6
  return True



with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a):
        m= int (lineas[i])
        for x in range (1, m):
           w= isPower(x)
           if w == True:
              q= is_prime(x-1)
              if q == True:
                  if (x-1) == 127:
                   print str(x-1),
                  
                  elif m > (x*2):
                   print str(x-1)+",",

                  else:
                   print str(x-1),
        print
             
          


