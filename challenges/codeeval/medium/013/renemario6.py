# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')


for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(',')
		b=b.split()
		for i in str(b):
			tmp=""
			for j in str(a):
				if i!=j:
					tmp+=j
			a=tmp
		print a

archivo.close()
