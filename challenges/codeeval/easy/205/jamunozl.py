import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt", 'r')
for test in test_cases:
	array=list(test)
	array.pop()
	result=[]
	whitespaceRepeated=True
	for i in range (0, len(array)):
		if (ord(array[i])>=65 and ord(array[i])<=90 or ord(array[i])>=97 and ord(array[i])<=122):
			result.append(array[i].lower())
			whitespaceRepeated=False
		else:
			if(whitespaceRepeated==False):
				result.append(" ")
				whitespaceRepeated=True
	print("".join(result)) 
test_cases.close()
