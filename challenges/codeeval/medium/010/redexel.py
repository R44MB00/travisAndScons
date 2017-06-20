#Alexander Botero
import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    texto, numero = test.split()[:-1], int(test.split()[-1])
    try:
        print texto[-numero]
    except IndexError:
        pass
