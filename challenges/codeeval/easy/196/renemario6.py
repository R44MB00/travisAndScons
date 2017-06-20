# -*- coding: utf-8 -*-
import sys
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		for original in line.split(' '):
			word=original[len(original)-1::]+original[1:len(original)-1:]+original[:1:]
			sys.stdout.write('%s ' % word)
			word=''
		print

archivo.close()
