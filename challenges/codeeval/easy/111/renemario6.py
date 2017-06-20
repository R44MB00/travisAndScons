# -*- coding: utf-8 -*-

import sys
archivo = open(sys.argv[1], 'r')


for i in archivo:
	line = i.strip()
	if line:
		maximo = ''
		for j in line.split(' '):
			if len(j) > len(maximo):
				maximo = j
		print maximo

archivo.close()
