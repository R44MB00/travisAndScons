import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		if len(line) > 55:
			a=line.split(' ')
			b=''
			for i in a:
				if len(b+i)+1 > 40:
					break
				else:
					b=b+i+' '
			sys.stdout.write('%s... <Read More>'%(b[0:len(b)-1]))
			print
		elif len(line)<= 55:
			print line
archivo.close()
