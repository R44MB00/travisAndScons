import sys
from datetime import datetime

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split(' ')
		a=sorted(a,reverse=True)
		resta= datetime.strptime(a[0],'%H:%M:%S')-datetime.strptime(a[1],'%H:%M:%S')
		horas = resta // 3600
		if len(str(resta)) > 7:
			sys.stdout.write('%s:%s:%s\n'%(str(horas)[5:7],str(resta)[3:5],str(resta)[6:8]))
		else:
			sys.stdout.write('%s:%s:%s\n'%(str(horas)[5:7],str(resta)[2:4],str(resta)[5:7]))
archivo.close()
