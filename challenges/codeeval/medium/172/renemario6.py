import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split(' ')
		number=''.join(a)
		number=number[::-1]
		suma=0
		for n,i in enumerate(number):
			if n % 2 !=0:
				if int(i)*2 > 9:
					suma+=(int(str(int(i)*2)[0])+int(str(int(i)*2)[1]))
				else:
					suma+=int(i)*2
			else:
				suma+=int(i)
				
		if suma % 10 ==0:
			print 1
		else:
			print 0

archivo.close()
