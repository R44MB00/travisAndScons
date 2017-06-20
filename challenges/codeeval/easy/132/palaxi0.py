
import sys

with open(sys.argv[1], 'r') as test_cases:
    
    for test in test_cases:
        lista = test.strip().split(',')
        largo = (len(lista))/2
        salida=0
        for i in lista:
            if lista.count(i) > largo:
                salida = i
            else:
                salida = None
        print (salida)
