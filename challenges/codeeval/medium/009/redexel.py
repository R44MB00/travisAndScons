#Alexander Botero

import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    grupo = [int(i) for i in test.split()]
    print ' '.join(str(i) for i in grupo[-1::-2])
