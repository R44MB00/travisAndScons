import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split(' ')
		print ' '.join(sorted(a,reverse=True))

archivo.close()
