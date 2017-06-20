import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=re.findall('[0-9]+',line)
		a=sorted(map(int,a))
		lista=[]
		
		lista.append(a[0])
		for i in range(1,len(a)):
			lista.append(a[i]-a[i-1])
		print ','.join(map(str,lista))
archivo.close()
