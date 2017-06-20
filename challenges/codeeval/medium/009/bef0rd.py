
import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
	stack = []
	e = test.split(" ")
	for x in e:
		stack.append(x)
	even = 1
	output = ""
	for i in range(len(e)):
		x = stack.pop()
		if even == 1:
			output += x + " "
			even = 0
		else:
			even = 1
	print output.strip()
