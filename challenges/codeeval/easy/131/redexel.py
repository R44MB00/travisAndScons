#Alexander Botero 
import re
import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    number, pattern = test.split()
    regex = re.compile('([a-z]+)([\+|\-])[a-z]+')
    len_a, operation = re.findall(regex, pattern)[0]
    numero_a, numero_b = int(number[:len(len_a)]), int(number[len(len_a):])
    print numero_a + numero_b if operation == '+' else numero_a - numero_b
