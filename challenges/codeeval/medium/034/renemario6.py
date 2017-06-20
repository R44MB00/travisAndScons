import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split(';')
		a,b=map(int,a.split(',')),int(b)
		pairs=[]
		for n,i in enumerate(a):
			for m,j in enumerate(a):
				if n!=m:
					if i+j==b:
						string='%i,%i'%(j,i)
						flag=True
						for k in pairs:
							if k==string:
								flag=False
						if flag:
							pairs.append('%i,%i'%(i,j))
		if pairs:
			print ';'.join(pairs)
		else:
			print "NULL"
archivo.close()
