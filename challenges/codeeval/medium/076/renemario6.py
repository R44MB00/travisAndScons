# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	if i.rstrip() != ''
		print " :: ".join(i.split(','))

archivo.close()
