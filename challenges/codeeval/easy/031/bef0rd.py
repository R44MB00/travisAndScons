import sys
import itertools

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
# raise ValueError(test_case)
for test in test_case:
	(num,alphabet) = test.split(",")
