
import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
	e = test.split(",")
	numbers = [ int(x) for x in e ]
	s = sorted(set(numbers))
	s = [ str(x) for x in s ]
	print ','.join(s)
