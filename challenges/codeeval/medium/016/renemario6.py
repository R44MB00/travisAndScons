import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=int(line)
		b = ("{0:b}".format(a))
		print list(b).count('1')

archivo.close()
