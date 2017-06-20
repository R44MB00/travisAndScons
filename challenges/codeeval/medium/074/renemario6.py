import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=int(line)
		cont=0
		while a > 0:
			if a >= 5:
				a=a-5
			elif a >= 3:
				a=a-3
			elif a >= 1:
				a=a-1
			cont+=1
		print cont

archivo.close()
