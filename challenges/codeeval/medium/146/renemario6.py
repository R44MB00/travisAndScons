import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split(' ')
		a=map(int,a)
		esp=(a[0]-12)/a[1]
		if a[2] != 0:
			if esp-a[2] <= 0:
				print 0
			else:
				print esp-a[2]
		else:
			print esp+1

archivo.close()
