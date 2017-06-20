
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        numbers = test.strip().split(" ")
        numbers.sort(key=float)
        print (" ".join(numbers))
