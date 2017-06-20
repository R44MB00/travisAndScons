
import sys

mersenne_primes = [3, 7, 31, 127, 2047]


#with open(sys.argv[1], 'r') as test_cases:
with open('test.txt', 'r') as test_cases:
    for test in test_cases:
    	print (', '.join(str(i) for i in mersenne_primes if i < int(test)))
