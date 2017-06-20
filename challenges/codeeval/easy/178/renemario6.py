import sys
import math

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		m=line.split(' ')
		a=[]
		b=[]
		vv=math.sqrt(len(m))
		vv=int(vv)
		for i in range(0,len(m),vv):
			a.append(m[i:i+vv])
		for i in range(len(a)):
			for j in range(len(a)-1,-1,-1):
				b.append(a[j][i])
			
		print ' '.join(b)

archivo.close()
