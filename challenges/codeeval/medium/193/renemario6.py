import sys
from itertools import cycle


def magicNumber(num):
	if '0' in num:
		return False

	visitados=[]
	ciclo=cycle(num)
	salto=int(next(ciclo))
	
	for i in range(len(num)):
		visitados.append(salto)
		salto = int([next(ciclo) for j in range(salto)][-1])
	if salto != visitados[0] or len(set(visitados)) != len(num):
		return False
	
	return True


#print magicNumber(str(6231))
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		lista=[]
		for j in range(int(line.split(' ')[0]),int(line.split(' ')[1])+1):
			if magicNumber(str(j)):
				lista.append(j)
		if not lista:
			print -1
		else:
			print ' '.join(map(str,lista))
archivo.close()


'''

def magicNumber(num):
	visitados=[i for i in str(num)]
	saltos=int(num[0])
	recorrer=str(num)
	while len(visitados)>0:
		

		while int(saltos) >= len(recorrer):
			recorrer+=num
		try:
			visitados.remove(recorrer[int(saltos)])
			recorrer=recorrer[int(saltos):len(recorrer)]
		except ValueError:
			return False
		saltos=recorrer[0]

	return True


archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		lista=[]
		for j in range(int(line.split(' ')[0]),int(line.split(' ')[1])+1):
			tmp=str(j)
			nn=-1
			total=0
			for k in tmp:
				total+=int(k)
				if nn != k:
					nn=k
				elif nn == k:
					nn=-1
					break
			if nn != -1 and not ('0' in str(j)):
				if magicNumber(str(j)):
					lista.append(j)
		if not lista:
			print -1
		else:
			print ' '.join(map(str,lista))
archivo.close()


if (int(tmp[0]) % len(tmp) != 0):
				if (tmp[0] != tmp[len(tmp)-1]):
					total=0
					for k in tmp:
						total+=int(k)
					if total % len(tmp) == 0 :
						lista.append(j)

'''
