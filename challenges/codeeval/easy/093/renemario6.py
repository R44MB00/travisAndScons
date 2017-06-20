# -*- coding: utf-8 -*-

import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		ora = line.split(' ')
		for j in ora:
			sys.stdout.write(j[0:1:].upper(),)
			sys.stdout.write(j[1:len(j):],)
			print " ",
		print ""	

archivo.close()
