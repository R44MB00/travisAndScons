from collections import Counter
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = test.strip().split(";")[1].split(",")
        count = Counter(lista).items()
        for x,y in count:
            if y > 1:
                print (x)