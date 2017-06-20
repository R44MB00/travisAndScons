# -*- coding: utf-8 -*-

import sys
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		total=0
		num = int(line)
		repetidas=[]
		flag=True
		while flag:
			for j in str(num):
				total = total + (int(j)**2)
			for k in repetidas:
				if k==total:
					print 0
					flag=False
					break
			repetidas.append(total)	
			if total==1:
				print 1
				break
			num=total
			total=0
archivo.close()
