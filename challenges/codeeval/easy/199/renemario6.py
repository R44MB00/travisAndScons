import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(' ')
		for i,j in zip(str(a),str(b)):
			if int(j):
				sys.stdout.write('%s'%i.upper())
			else:
				sys.stdout.write('%s'%i.lower())
		print

archivo.close()
