import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    decimal = int(test, 16)
    print(decimal)
test_cases.close()
