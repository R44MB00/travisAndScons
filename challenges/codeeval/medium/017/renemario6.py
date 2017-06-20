# -*- coding: utf-8 -*-
import sys

with open(sys.argv[1], 'r') as input:
    archivo = input.read().strip().splitlines()

for i in archivo:
	if i.rstrip() != '': 
		lista= [int(j) for j in i.split(',')]
		maximo = sum(lista[0:1])
		for j in range(len(lista)):
			for k in range(j+1,len(lista)+1):
				suma=sum(lista[j:k])
				maximo = suma if suma > maximo else maximo
		print maximo


'''		
for i in range(len(lista)):
	lista[i] = map(int,lista[i])
	lista[i] = sorted(lista[i],reverse=True)
	if len(lista[i]) > 1:
		print lista[i][0]+lista[i][1]
	else:
		print lista[i][0]
'''
