
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    for num in test.split("\n\n"):
        print("{0:b}".format(int(num)).count("1"))

test_cases.close()
