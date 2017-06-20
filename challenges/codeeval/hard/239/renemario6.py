# -*- coding: utf-8 -*-
import sys

def ida(inicial,maximo,n):
	for i in range(len(inicial)-1,n-1,-1):
		if maximo > inicial[i]:
			inicial[n]=inicial[i]
			inicial[i]=maximo
			return inicial,i
	return inicial,n

def vuelta(inicial,maximo,n):
	for i in range(n-1,-1,-1):
		if inicial[i] > maximo:
			inicial[n]=inicial[i]
			inicial[i]=maximo
			return inicial,i
	return inicial,n

def check(n1,n2):
	if n1==n2:
		return True
	else:
		return False
	

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		inicial=line.split(' ')
		pivots=[0]*len(inicial)
		cont=0
		while True:
			for i in range(0,len(pivots)):
				if pivots[i]==0 and i-1 >= 0:
					if pivots[i-1]!=1:
						pp=i
						piv=inicial[i]
						cont+=1
						break
				if pivots[i]==0 and i+1 < len(pivots):
					if pivots[i+1]!=1:
						pp=i
						piv=inicial[i]
						cont+=1
						break
			else:
				break
			while True:
				ppt=pp
				inicial,pp=ida(inicial,piv,pp)
				if check(ppt,pp):
					break
					
				ppt=pp
				inicial,pp=vuelta(inicial,piv,pp)
				if check(ppt,pp):
					break
				
			pivots[pp]=1
		print cont

archivo.close()
