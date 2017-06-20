#for python 2.7
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    result = " "
    test = test.split(" ")
    test.reverse()
    result = result.join(test)
    print(result)

