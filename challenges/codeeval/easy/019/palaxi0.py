
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = (test.strip().split(','))
        bin1 = bin(int(lista[0]))
        if bin1[-int(lista[1])] == bin1[-int(lista[2])]:
            print ('true')
        else:
            print ('false')
