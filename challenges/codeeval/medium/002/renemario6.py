# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')
count = 0
lista = []
for i in archivo:
	if count == 0:
		count = int(i.rstrip())
	elif i.rstrip() != '':
		lista.append(i.rstrip())

lista=sorted(lista, key = len, reverse=True)
for i in range(count):
	print lista[i]

archivo.close()
