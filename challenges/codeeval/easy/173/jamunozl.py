import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt", 'r')

for test in test_cases:
	superResult=[]
	array2 = test.split(' ')
	variable = array2.index('|')

	counting= test.count('|')
	array = test.split("|")
	array = [s.rstrip() for s in array]
	otherArray=test.split(" ")
	otherArray = [w.replace('|', '') for w in otherArray]
	otherArray = [x for x in otherArray if x]
	otherArray = [s.rstrip() for s in otherArray]
	result = []
	for i in range (0, variable):
		for j in range (0, len(array)):
			result.append(otherArray[j*variable+i])
		result = [int(i) for i in result]
		superResult.append(max(result)) 
		result = []
	print (' '.join(str(x) for x in superResult))   

test_cases.close()
