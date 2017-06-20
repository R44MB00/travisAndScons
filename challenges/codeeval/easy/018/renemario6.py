# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	lista = i.rstrip().split(',')
	for j in range(1,int(lista[1])):
		num = 2**j
		if(num => int(lista[0])):
			print num
			break
	else:
		print i.rstrip().split(',')[0]

archivo.close()
