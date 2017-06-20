# -*- coding: utf-8 -*-
import sys
import re

archivo = open(sys.argv[1], 'r')

latin={
	'a':0,
	'b':1,
	'c':2,
	'd':3,
	'e':4,
	'f':5,
	'g':6,
	'h':7,
	'i':8,
	'j':9
}

for i in archivo:
	line = i.strip()
	if line:
		lista=re.findall('[a-j0-9]+', line)
		lista= [k for j in lista for k in j]
		num=''
	for j in lista:
		if j.isdigit():
			num+=j
		else:
			num+=str(latin[j])
	if num:
		print num
	else:
		print "NONE"
archivo.close()
