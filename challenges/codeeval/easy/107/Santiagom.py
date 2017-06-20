import sys,string


test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	test = test.strip()
	print (len(sorted(set(test))))


test_cases.close()
