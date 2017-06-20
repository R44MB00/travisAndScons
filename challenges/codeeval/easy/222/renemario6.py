import sys
from itertools import cycle

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split('|')
		a,b=a.strip().split(' '),int(b)
		while len(a)>1:
			c=cycle(a)
			for i in range(0,int(b)):
				n=c.next()
				if i == int(b)-1:
					a.remove(n)

		print ' '.join(a)


archivo.close()
