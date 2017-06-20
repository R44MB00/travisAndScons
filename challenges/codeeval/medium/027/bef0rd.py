import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    n = "{0:b}".format(int(test))
    print n

