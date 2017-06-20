import collections
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.lower()
        dicci = collections.Counter(stringe)
        multi = 26
        total = 0
        for letra,valor in dicci.most_common():
            if letra.isalpha():
                total += valor*multi
                multi -= 1
        print (total)
