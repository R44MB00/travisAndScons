import sys
test_cases = open("test2.txt", 'r')
for test in test_cases:
	dat = test.strip().split(",")
	x = int(dat[0])
	n = int(dat[1])
	res = 0

	while res < x: 
		res += n
	print res		

test_cases.close()
