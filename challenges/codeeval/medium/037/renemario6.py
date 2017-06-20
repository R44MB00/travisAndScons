# -*- coding: utf-8 -*-
import sys

archivo = open(sys.argv[1], 'r')


for i in archivo:
	line = i.strip()
	if line:
		lista=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
		for i in str(line.lower()):
			try:
			    lista.remove(i)
			except ValueError:
			    pass
		if lista:
			print ''.join(lista)
		else:
			print 'NULL'
archivo.close()	    
