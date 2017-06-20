import sys
import itertools
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    numbers = [int(i) for i in test.split(',')]
    print sum(1 for i in itertools.combinations(numbers, 4) if sum(i) == 0)

test_cases.close()
