#for python 2.7
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.replace("\n","").split(',')
    index = test[0][::-1].find(test[1])
    if index != -1:
        index = len(test[0])-index-1
    print index
