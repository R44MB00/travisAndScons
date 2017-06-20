# -*- coding: utf-8 -*-
import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(':')
		a=re.findall('[0-9]+',a)
		b= [j.strip().split('-') for j in b.split(',')]
		c=[i for i in a]

		for k in b:
			c[int(k[1])]=a[int(k[0])]
			c[int(k[0])]=a[int(k[1])]
			a=[i for i in c]
			
		print ' '.join(c)

archivo.close()
