import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
  
    num = int(test)
    sum = 0
    while num != 0:
    	sum += num % 10
    	num /= 10
    print sum
