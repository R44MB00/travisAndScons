import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split('|')
		a=a.strip().split(' ')
		b=b.strip().split(' ')
		hexSum=0
		binSum=0
		for i in a:
			hexSum+=int(i,16)
		for i in b:
			binSum+= int(i,2)
		if hexSum <= binSum:
			print True
		else:
			print False
archivo.close()
