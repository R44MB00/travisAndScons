# -*- coding: utf-8 -*-
import sys
archivo = open(sys.argv[1], 'r')

def armstrongNumber(num):
	total=0
	for i in str(num):
		total+=(int(i)**len(str(num)))
	if total == num:
		return True
	else:
		return False


for i in archivo:
	line = i.strip()
	if line:
		print armstrongNumber(int(line))

archivo.close()
