import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=line.split('|')
		count=0
		code=['c','o','d','e']
		lista= [i.strip() for i in a]
		matrix=[]
		for i in lista:
			matrix.append(list(i))
	
		for h in range(0,len(matrix)-1):
			for k in range(0,len(matrix[0])-1):
				temp=[]
				for i in range(h,h+2):
					for j in range(k,k+2):
						temp.append(matrix[i][j])
				if set(temp).issuperset(set(code)):
					count+=1
					
		print count
archivo.close()
