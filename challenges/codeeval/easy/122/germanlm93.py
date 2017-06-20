
def logic(x):
	line = ""
	alph = list("abcdefghij")
	for i in x:
		print ord(i)
		if ord(i)>=97 and ord(i)<=106:
			line = line + str(alph.index(i))
		else: 
			if ord(i)>=48 and ord(i)<=57:
				line = line + str(i)
	if(line == ""):
		print "NONE"
	else:
		print line

logic("09")
