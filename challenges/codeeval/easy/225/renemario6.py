import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a,b=line.split('|')
		a,b=a[:len(a)-1:],b[1:len(b):]
		count=0
		for i,j in zip(a,b):
			if i not in j:
				count +=1
		if count ==0:
			print "Done"
		elif count <= 2:
			print "Low"
		elif count <=4:
			print "Medium"
		elif count <=6:
			print "High"
		elif count > 6:
			print "Critical"

archivo.close()
