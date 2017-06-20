#Alexander Botero
import sys
import collections

with open(sys.argv[1], 'r') as input:
    read = input.read().strip().splitlines()

for test in read:
    conteo = collections.Counter(test.split())
    uniques = [i for i in conteo.keys() if conteo[i] == 1]
    print test.split().index(min(uniques)) + 1 if uniques else 0
