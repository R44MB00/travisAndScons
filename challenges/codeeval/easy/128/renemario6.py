# -*- coding: utf-8 -*-

import sys


def imprime(n1,n2):
	sys.stdout.write('%i '%n1,)
	sys.stdout.write('%s '%n2,)
	return 0

archivo = open(sys.argv[1], 'r')
num = ''
count=0
for i in archivo:
	line = i.strip()
	if line:
		for j in line.split(' '):
			if num != j: 
				if num != '' and count != 0:
					count=imprime(count,num)
				num=j
				count+=1
			elif num == j:
				count+=1
		count=imprime(count,num)		
		print

archivo.close()
