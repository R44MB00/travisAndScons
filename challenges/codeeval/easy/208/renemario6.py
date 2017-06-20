import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split('|')
		a= [i.strip().split(' ') for i in a]
		maximo = ['']*len(a[0])
		for i in a:
			for n,j in enumerate(i):
				if int(j) > maximo[n] or maximo[n] == '':
					maximo[n]=int(j)
		print ' '.join(map(str,maximo))
archivo.close()
