import sys
from collections import OrderedDict

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		lista = line.split(',')
		igual=OrderedDict.fromkeys(lista)
		print ','.join(igual)
archivo.close()
