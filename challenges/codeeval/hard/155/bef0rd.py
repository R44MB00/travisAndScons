import sys
import math
import collections


with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

def buscarRepetidos(s, n, l):
    c = collections.Counter(s)
    for letter, count in c.most_common(100):
        diferencial = 32 - letter 
        try:
            salida = [ chr(x +  diferencial) for x in s ]
            frase = (''.join(salida)).split(" ")
            found = 0;
            for i in frase:
                if len(i) == n and i[-1] == l:
                    found = found + 1
            
            if found == 2:
                return ''.join(salida)
        except:
            pass

    
for test in test_cases:
    n, last, conjunto = test.split(" | ")
    n = int(n)
    lastAscii = ord(last)
    conjunto = [int(x) for x in conjunto.split(" ")]
    print buscarRepetidos(conjunto, n, last)
    exit()
