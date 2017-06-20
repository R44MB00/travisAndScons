# -*- coding: utf-8 -*-

import sys
archivo = open(sys.argv[1], 'r')


for i in archivo:
	line = i.strip()
	if line:
		lista = line.split(' ')
		lista = map(int,lista)
		for j in range(1,lista[2]+1):		
			if (j % lista[0] == 0 and j % lista[1] ==0):
				sys.stdout.write('FB ',)
			elif j % lista[0] == 0:
				sys.stdout.write('F ',)
			elif j % lista[1] == 0:
				sys.stdout.write('B ',)
			else:
				sys.stdout.write('%d ' % j)
		print ""
archivo.close()
