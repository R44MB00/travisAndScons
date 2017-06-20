
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = test.strip().split(' ')
        lista2= []
        for i in range (0,len(lista)):
            lista2.append(len(lista[i]))
        maxindex =lista2.index(max(lista2))
        print (lista[maxindex])
