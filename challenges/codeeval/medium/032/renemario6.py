import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(',')
		a,b=a[::-1],b[::-1]

		if a[0:len(b)] == b:
			print 1
		else:
			print 0

archivo.close()
