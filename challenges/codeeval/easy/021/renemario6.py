# -*- coding: utf-8 -*-
#--

import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	num = 0
	for j in str(i.rstrip()):
		num = num + int(j)
	print num

archivo.close()



def sum_digits3(n):
	r = 0
	while n:
		r, n = r + n % 10, n // 10
  	print r

sum_digits3(496)
