

import sys
import collections

test_cases = open(sys.argv[1], 'r')
for line in test_cases:
    
    line = line.lower()
    
    letras = []
    
    for i in line:
        if((ord(i) <= 122) & (ord(i) >= 97)):
            letras.append(i)
        
    counter = collections.Counter(letras)
    numeros = []
    for i in counter:
        numeros.append(counter[i])
    numeros.sort()
    numeros.reverse()
    
    suma = 0
    mult = 26
    for i in numeros:
        suma = suma + i*mult
        mult = mult - 1
    
    print(suma)

test_cases.close()


