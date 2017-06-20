# -*- coding: utf-8 -*-
import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		lista=re.findall('[a-zA-Z]+', line)
		print ' '.join(lista).lower()

archivo.close()
