
# Alexander Botero


import sys

with open(sys.argv[1], 'r') as input:
    palabra = input.read().strip().splitlines()

for letra in palabra:
    print ' '.join((i.swapcase() for i in letra.split()))

	
	
