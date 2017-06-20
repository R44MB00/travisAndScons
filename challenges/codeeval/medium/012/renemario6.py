import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		char=''
		for n,i in enumerate(str(line)):
			flag=True
			for m,j in enumerate(str(line)):
				if n!=m:
					if i==j:
						flag=False
						break
			if flag:
				char=i
				break
		print char


archivo.close()
