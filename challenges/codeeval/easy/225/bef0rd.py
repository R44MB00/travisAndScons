import sys
import string

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    a, x = test.split(" | ")

    b = 0
    for i in range(0, len(a)):
        if a[i] != x[i]:
            b = b+1
    if b == 0:
        print "Done"
    elif b <= 2:
        print "Low"
    elif b <= 4:
        print "Medium"
    elif b <= 6:
        print "High"
    elif b > 6:
        print "Critical"
