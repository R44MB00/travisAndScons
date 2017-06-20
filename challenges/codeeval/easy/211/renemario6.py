import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split('|')
		b=b.strip()
		a=a.split(' ')
		lista=[]
		for j in a:		
			flag=True
			for k in b:
				if not k in j:				
					flag=False
					break
			if flag:
				lista.append(j)
		if lista:
			print ' '.join(lista)
		else:
			print False

archivo.close()
