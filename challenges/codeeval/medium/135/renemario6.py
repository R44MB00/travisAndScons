import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		lista=line.split(',')
		iniciales= [i[len(i)-1:len(i)] for i in lista]
		cont=1
		for i in lista
		print lista
		print iniciales


archivo.close()
