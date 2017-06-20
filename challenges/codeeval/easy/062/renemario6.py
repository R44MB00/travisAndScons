import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(',')
		a,b=int(a),int(b)
		
		while a >= b:
			maximo=0
			for i in range(1,10):
				if a >= (i*b) and (i*b) > maximo:
					maximo = (i*b)
			a=a-maximo
		print a
archivo.close()
