import sys
def solve(s1, s2):
    s1s1 = s1 + s1
    return s2 in s1s1
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    line = test.strip()
    print solve(*line.split(","))
test_cases.close()
