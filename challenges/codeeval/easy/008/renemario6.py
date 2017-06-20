#-*- coding: utf-8 -*-

import sys

archivo = open(sys.argv[1], 'r')
for i in archivo:
	if i.strip():
		print ' '.join(reversed(i.rstrip().split('\\')))
		#print ' '.join(reversed(i.split('\\')))

archivo.close()
