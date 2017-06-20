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





def palindrome(num):
    r=num[::-1]
    for i in range (0, (len(num) + 1) / 2):
        if r[i] != num[i]:
            return False
    return True

for i in range (1, 1000):
       
    m = is_prime (i)
    if m == True :
      x = str(i)
      r = palindrome(x)
      if r == True:
        o =i
print o
