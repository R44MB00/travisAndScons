import sys
import itertools
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        print list("".join(i) for i in itertools.combinations(line.split(",")[0], len(line.split(",")[1])) if "".join(i) == line.split(",")[1]).count(line.split(",")[1])
