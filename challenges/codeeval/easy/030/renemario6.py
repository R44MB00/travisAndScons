# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(';')[0].split(','),line.split(';')[1].split(',')
		print ','.join(sorted(set(b).intersection(a)))
archivo.close()
