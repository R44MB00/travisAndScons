#for python 2.7
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.replace('\n', '')
    test = test.split(' ')
    print(test[len(test)-2])
