import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split(' ')
		num=''
		for n,i in enumerate(a):
			if n==0 or n%2 ==0:
				if i=='0':
					num+=a[n+1]
				elif i=='00':
					num+='1'*len(a[n+1])
		print int(num,2)


archivo.close()
