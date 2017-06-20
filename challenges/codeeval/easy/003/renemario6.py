# -*- coding: utf-8 -*-
from itertools import count, islice
from math import sqrt

def esPrimo(n):
    if n < 2: 
    	return False
    for number in islice(count(2), int(sqrt(n)-1)):
        if not n % number:
            return False
    return n

maximo=0
for i in range(2,1000):	
	if(str(i) == str(i)[::-1]):
		if esPrimo(i) != False:
			maximo = i
print maximo	
