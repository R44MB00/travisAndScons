
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
    
        lista = []
        test = test.strip().split(',')
        
        for i in test:
            if i not in lista:
                lista.append(i)
        print (",".join(lista))
