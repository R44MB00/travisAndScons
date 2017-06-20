import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        num = int(str(test.strip()))
        if num%2 == 0:
            print (1)
        else:
            print (0)
