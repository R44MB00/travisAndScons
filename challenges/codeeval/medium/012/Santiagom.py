import sys

#test_cases = open(sys.argv[1], 'r')

test_cases = open('test.txt')
for test in test_cases:
    test = test.strip()
    suma = ""
    for i in test:
    	if test.count(i) == 1:
    		print (i)
    		break








test_cases.close()
