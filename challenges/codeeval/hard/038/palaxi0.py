import itertools
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
            line = test.strip()
            perm = int(line.split(",")[0])
            stringtoperm=line.split(",")[1]*2
            lista = sorted(set(list("".join(i) for i in itertools.combinations_with_replacement(stringtoperm,perm))))
            print (",".join(lista))
