import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		line=line.replace(' ','')
	 	up=0
	 	low=0
	 	for j in line:
	 		if j.islower():
	 			low+=1
	 		elif j.isupper():
	 			up+=1
	 	print "lowercase: %.2f uppercase: %.2f" % (float(low*100)/float(len(line)),float(up*100)/float(len(line)))
archivo.close()
