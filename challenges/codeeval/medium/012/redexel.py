#Alexander

import collections
import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    count = collections.Counter(test)
    print test[min(test.index(i) for i in
                   (j for j in count.keys() if count[j] == 1))]
