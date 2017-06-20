import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		paises= line.split('|')
		equipos= re.findall('[0-9]+',line)
		equipos=sorted(map(int,set(equipos)))

		for i in equipos:
			sys.stdout.write('%s:'%i)
			lista=[]
			for n,j in enumerate(paises):
				for k in j.split(' '):
					if str(i) == k:
						lista.append('%i'%(n+1))
			print ','.join(lista),
			sys.stdout.write('; ')

		print

archivo.close()
