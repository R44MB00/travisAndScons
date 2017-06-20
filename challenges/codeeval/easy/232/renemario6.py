import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split('|')
		a=map(int,a.strip().split(' '))
		b=int(b)
		count = 0
		while count < b:	
			for n,i in enumerate(a):
				if n+1!=len(a) and i > a[n+1]:
					a[n]=a[n+1]
					a[n+1]=i
					break
			count+=1
		print ' '.join(map(str,a))

archivo.close()
