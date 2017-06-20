import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		num=int(line)
		f=[0,1]
		for n in range(2,num+1):
			f.append(f[n-1]+f[n-2])
		if num==0:
			print 0
		else:
			print f[len(f)-1]

archivo.close()
