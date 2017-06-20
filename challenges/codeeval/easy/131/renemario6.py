import sys
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		c=0
		n1=''
		n2=''
		nums=[i for i in str(line.split(' ')[0])]
		for n,j in enumerate(str(line.split(' ')[1])):
			if (j != '+' and j != '-') and c==0: 
				n1+=nums[n]
			elif j == '+':
				c=1
			elif j == '-':
				c=2
			else:
				n2+=nums[n-1]
		print int(n1)+int(n2) if c == 1 else int(n1)-int(n2)
archivo.close()
