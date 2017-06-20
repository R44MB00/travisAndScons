import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		actual=True
		for i in line:
			if actual and i.isalpha():
				sys.stdout.write('%s'%i.upper())
				actual=False
			elif not actual and i.isalpha():
				sys.stdout.write('%s'%i.lower())
				actual=True
			else:
				sys.stdout.write('%s'%i)
		print
archivo.close()
