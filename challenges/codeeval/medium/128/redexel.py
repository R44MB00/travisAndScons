#Alexander
import sys

with open(sys.argv[1], 'r') as input:
    read = input.read().strip().splitlines()

for test in read:
    secuencia = test.split()
    number, count, output = secuencia[0], 0, []

    for i in secuencia:
        if i == number:
            count += 1
        else:
            output.append('{0} {1}'.format(count, number))
            number, count = i, 1

    output.append('{0} {1}'.format(count, number))
    print ' '.join(output)
