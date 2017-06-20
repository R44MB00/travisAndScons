import sys

test_cases = open(sys.argv[1],'r')

for test in test_cases:
	suma = 0
	for i in range(0, len(test)):
		if test[i:i+5] == '<--<<':
			suma += 1
		if test[i:i+5] == '>>-->':
			suma += 1
	print (suma)

