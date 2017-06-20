from math import sqrt
from itertools import count, islice

def isPrime(n):
    return n > 1 and all(n%i for i in islice(count(2), int(sqrt(n)-1)))

def sum_digits(n):
   r = 0
   while n:
       r, n = r + n % 10, n // 10
   return r

i = 0
for n in range(1000000, 9000000):
    s = str(n)
    if isPrime(n) and isPrime(sum_digits(n)):
        print(n)
        i = i + 1
        if (i == 2):
            break
