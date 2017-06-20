# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		total=line.split(' ')
		print total[len(total)-2]
archivo.close()
