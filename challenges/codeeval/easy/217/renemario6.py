import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(' ')
		cont=0
		for i in range(1,int(b)+1):
			if ("{0:b}".format(i)).count('0') == int(a):
				cont+=1
		print cont
		
archivo.close()
