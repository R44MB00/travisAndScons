# -*- coding: utf-8 -*-

import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	if int(i) > 0 and int(i) < 5000:
		if int(i.strip()) % 2:
			print 0
		else:
			print 1
archivo.close()
