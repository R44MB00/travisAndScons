import sys
from itertools import groupby

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		line=' '.join(line.split())
		a = line.split(' ')
		lista=[]
		for i in a:
			lista.append(''.join(j for j, _ in groupby(i)))
		print ' '.join(lista)
		
archivo.close()
