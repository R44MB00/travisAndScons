#Alexander Botero 

import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    secuencia = [int(i) for i in test.split()]
    seq_length = len(secuencia)

    x, y = 0, 1
    while secuencia[x] != secuencia[y]:
        x = (x + 1) % seq_length
        y = (y + 2) % seq_length

    begin = 0
    y, x = abs(y - x), 0
    while secuencia[x] != secuencia[y]:
        x = (x + 1) % seq_length
        y = (y + 1) % seq_length
        begin += 1

    length, y = 1, x + 1
    while secuencia[x] != secuencia[y]:
        y += 1
        length += 1

    print ' '.join(str(i) for i in secuencia[begin:begin + length])
