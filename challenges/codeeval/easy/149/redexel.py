#Alexander Botero
import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    sequencia, binary = test.split(), ''
    for i in xrange(0, len(sequencia), 2):
        binary += len(sequencia[i + 1]) * ('0' if sequencia[i] == '0' else '1')
    print int(binary, 2)
