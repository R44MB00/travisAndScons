import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
   print sum(pow(int(i), len(test)) for i in test) == int(test)

test_cases.close()
