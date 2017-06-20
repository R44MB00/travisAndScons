# -*- coding: utf-8 -*-
import sys
import re
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		words= ','.join(re.findall('[a-zA-Z]+',line))
		numbers=','.join(re.findall('\d+',line))
		if words and numbers:
			print '|'.join((words,numbers))
		else:
			print ''.join((words,numbers))

archivo.close()
