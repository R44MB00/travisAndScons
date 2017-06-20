# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')

lista = []
for i in archivo:
	lista.append(i.rstrip().split(' '))

for i in range(len(lista)):
	lista[i] = map(float,lista[i])
	lista[i] = sorted(lista[i])

for i in lista:
	for j in i:
		print "%.3f" % j,
	print ""

archivo.close()
