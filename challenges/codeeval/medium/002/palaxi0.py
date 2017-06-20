
import sys

with open(sys.argv[1], 'r') as test_cases:
    lista =[]
    for test in test_cases:
        lista.append(test.strip())
    n = lista[0]
    lista.sort(key =len,reverse =True)
    for i in range(0,int(n)):
        print (lista[i])
    
