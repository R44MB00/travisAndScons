import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		nn=float(line)
		degrees=(int(nn))
		temp=60*(nn - degrees)
		minutes=int(temp)
		seconds= 60 * (temp-minutes)
		sys.stdout.write('%i.'%degrees)
		if len(str(minutes))>1:
			sys.stdout.write('%i\''%minutes)
		else:
			sys.stdout.write('0%i\''%minutes)
		if len(str(int(seconds)))>1:
			sys.stdout.write('%i\"'%seconds)
		else:
			sys.stdout.write('0%i\"'%seconds)

		print
archivo.close
