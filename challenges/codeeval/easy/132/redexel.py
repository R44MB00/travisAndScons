#Alexander Botero
import sys
from collections import Counter

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    sequencia = test.split(',')
    count = Counter(sequencia)
    print(
        count.most_common(1)[0][0]
        if count.most_common(1)[0][1] > (len(sequencia)/2)
        else 'None'
    )
