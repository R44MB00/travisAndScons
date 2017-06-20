
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = test.strip().split(';')
        lista1 = set(lista[0].strip().split(','))
        lista2 = set(lista[1].strip().split(','))
        final = list((lista1.intersection(lista2)))
        if final != "":
            for i in range(0,len(final)):
                final[i] = int(final[i])
            final.sort()
            for i in range(0,len(final)):
                final[i] = str(final[i])
            print (",".join(final))
        else: 
            print ("")
