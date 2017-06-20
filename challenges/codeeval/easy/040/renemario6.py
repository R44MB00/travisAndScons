import sys

archivo = open(sys.argv[1], 'r')
def describing(num):

	for n,i in enumerate(str(num)):
		rep=i
		c=0
		for j in str(num):
			if n==int(j):
				c+=1
		if c != int(rep):
			return False
	return True

for i in archivo:
	line = i.strip()
	if line:
		print 1 if describing(line) else 0
archivo.close
