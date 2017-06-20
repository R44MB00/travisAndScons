# -*- coding: utf-8 -*-

tablas=[[str(i*j) for i in range(1,13)] for j in range(1,13)]

for i in tablas:
	for j in i:
		if i.index(j):
			print ' ' * (3 - len(j)) + j,
		else:
			print ' ' * (2 - len(j)) + j,
	print ""
