import sys
import string

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    test = test.lower()
    noesta = ""
    for i in string.ascii_lowercase:
        try:
            test.index(i)
        except:
            noesta += i
    print "NULL" if noesta == "" else noesta
