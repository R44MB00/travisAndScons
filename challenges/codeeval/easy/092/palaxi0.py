
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = test.strip().split(" ")
        print (lista[len(lista)-2])
