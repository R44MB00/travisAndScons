# -*- coding: utf-8 -*-
import sys
from math import sqrt
from itertools import count, islice

def esPrimo(n):
    if n < 2: 
    	return False
    for number in islice(count(2), int(sqrt(n)-1)):
        if not n % number:
            return False
    return n

with open(sys.argv[1], 'r') as input:
	archivo = input.read().strip().splitlines()

	for i in archivo:
		numt=2
		lista = []
		while numt < int(i):
			if esPrimo(numt):
				lista.append(numt)
			numt+=1
		for n,k in enumerate(lista):
			if n == len(lista)-1:
				sys.stdout.write("%i" % k,)
			else: 
				sys.stdout.write("%i," % k,)
		print

