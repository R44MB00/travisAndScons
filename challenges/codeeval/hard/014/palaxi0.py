import sys
import itertools
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista=  (sorted(["".join(i) for i in (itertools.permutations(test.strip()))]))
        print (",".join(lista))