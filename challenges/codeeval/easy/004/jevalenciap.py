import sys

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

final = 0
l=0

for i in range (1, 100000):

   resp= is_prime (i)
   if resp == True:
    final= final +i
    l = l+1
    if l == 1000:
      print final
      sys.exit()
