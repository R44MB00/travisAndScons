# -*- coding: utf-8 -*-
import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		line = map(int,re.findall('\d+',line))
		total = 0
		kids = 0
		for n,j in enumerate(line):
			if n==0:
				total+=j*3		
			elif n==1:
				total+=j*4
			elif n==2:
				total+=j*5
			elif n==3:
				total = int((total * j) / kids)
			kids+=j
		print total

archivo.close()
#def get_num(x):
#  	 return float(''.join(ele for ele in x if ele.isdigit() or ele == '.'))
