import sys
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		maximo=0
		mayor=''
		lista=line.split(' ')
		for i in lista:
			if len(i) > maximo:
				mayor=i
				maximo = len(i)
		palabra = [ '*'*n+"%s"%i for n,i in enumerate(mayor)]
		print ' '.join(palabra)

archivo.close()
