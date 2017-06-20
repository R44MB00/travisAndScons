import sys
import string

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    num = int(test)
    e = len(test)
    sum = 0
    for i in test:
        sum = sum + int(i)**e 
    print "True" if sum == num else "False"
