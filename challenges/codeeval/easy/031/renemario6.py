# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b = line.split(',')
		if b in a:
			for i in range(len(a)-1,-1,-1):
				if b == a[i]:
					print i
					break
		else:
			print -1
archivo.close()
