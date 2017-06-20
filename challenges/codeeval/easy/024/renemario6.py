# -*- coding: utf-8 -*-

import sys

archivo = open(sys.argv[1], 'r')
suma = 0
for i in archivo:
	if i.rsplit() != '':
		suma += int(i.rsplit()[0])

print suma
archivo.close()
