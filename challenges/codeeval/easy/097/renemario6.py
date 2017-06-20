# -*- coding: utf-8 -*-
import sys

def famosos(linea):
	letras,numeros = linea.split('|')[0],linea.split('|')[1].split(' ')
	numeros.remove('')
	nombre=''
	for i in numeros:
		#print (i)
		nombre +=letras[int(i)-1]
	print nombre



archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		famosos(line)

archivo.close()
