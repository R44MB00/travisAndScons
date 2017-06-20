import sys

def overlap(L1x,L1y,R1x,R1y,L2x,L2y,R2x,R2y):
	if (L1x > R2x or L2x > R1x):
		return False
	if (L1y < R2y or L2y < R1y):
		return False
	return True

#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")
for test in test_cases:
	test = test.strip()
	test = test.split(",")

	print (overlap(eval(test[0]),eval(test[1]),eval(test[2]),eval(test[3]),eval(test[4]),eval(test[5]),eval(test[6]),eval(test[7])))



test_cases.close()
