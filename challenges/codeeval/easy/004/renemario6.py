#-*- coding: utf-8 -*-
from itertools import count, islice
from math import sqrt

def esPrimo(n):
    if n < 2: 
    	return False
    for number in islice(count(2), int(sqrt(n)-1)):
        if not n % number:
            return False
    return n

total = 0
cnt = 2
primes = 0
while(primes < 1000):
	n = esPrimo(cnt)	
	if n != False:
		primes+=1
		total+=n
	cnt+=1
print total
