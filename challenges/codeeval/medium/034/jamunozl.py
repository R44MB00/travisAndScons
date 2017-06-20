import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt", 'r')

for test in test_cases:
	arrayNumber=test.split(';')
	lengthArrayNumber=len(arrayNumber)
	lastNumber=arrayNumber[lengthArrayNumber-1]
	arrayCompare=test.split(',')
	arrayCompare.pop()
	lengthArrayCompare=len(arrayCompare)
	found=False
	l = []
	for i in range(0, lengthArrayCompare):
		for j in range(i,lengthArrayCompare):
			result=int(arrayCompare[i])+int(arrayCompare[j])
			#print(result) 
			if (result == int(lastNumber)):
				#print("found")
				l.append(arrayCompare[i])
				l.append(',')
				l.append(arrayCompare[j])
				l.append(';')
				#print(arrayCompare[i]+','+arrayCompare[j],end=';')
				found=True
	if(found==False):
		print('NULL')
	else:
		l.pop()
		print("".join(l))

	#print("\n")	
	#print(arrayCompare)

test_cases.close()
