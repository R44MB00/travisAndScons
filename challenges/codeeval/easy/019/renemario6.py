import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=map(int,line.split(','))
		b = ("{0:b}".format(a[0]))[::-1]
		if b[a[1]-1] == b[a[2]-1]:
			print "true"
		else:
			print "false"

archivo.close()
