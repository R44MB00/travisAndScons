#Alexander Botero
import sys
import re

with open(sys.argv[1], 'r') as input:
    read = input.read().strip().splitlines()

for test in read:
    if test:
        print sum(int(i) for i in re.findall('id": (\d+), "label"', test))
