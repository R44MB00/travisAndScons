# -*- coding: utf-8 -*-
import sys

def reverseGroup(linea):
	nums,k=linea.split(';')[0].split(','),linea.split(';')[1]
	final = []
	c=0
	while len(nums) >= int(k):
		final+=nums[:int(k):][::-1]
		del nums[:int(k):]
	final+=nums
	print ','.join(final)

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		reverseGroup(line)

archivo.close()

'''
for i in xrange(0, last, interval):
            lst[i:i + interval] = lst[i:i + interval][::-1]
           '''
