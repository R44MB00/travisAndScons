import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:  
	test=test.rstrip("\n")
	test_array=test.split(",")
	word=test_array[0]
	rotation=test_array[1]
	count=0
	ir=rotation.index(word[0])
	iw=0
	while count<len(word):
		if (ir>=len(rotation)):
			ir=0    
		if(word[iw]==rotation[ir]):
			iw+=1
		ir+=1
		count+=1
	if iw==len(word):
		print "True"
	else:
		print "False"
test_cases.close()
