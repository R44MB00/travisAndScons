# -*- coding: utf-8 -*-
import sys
from itertools import count, islice
from math import sqrt

def esPrimo(n):
    if n < 2: 
    	return False
    for number in islice(count(2), int(sqrt(n)-1)):
        if not n % number:
            return False
    return n


archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(',')
		a,b=int(a),int(b)
		cont=0
		for i in range(a,b+1):
			if esPrimo(i) != False:
				cont+=1
		print cont
archivo.close()
