import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		casas = line.split()[1:]
		casas = map(int,casas)
		lista1=[]
		lista2=[]
		for i in range (1,max(casas)):
			lista1=[]
			for j in casas:
				lista1.append(abs(i-j))
			lista2.append(sum(lista1))
		print min(lista2)

archivo.close()
