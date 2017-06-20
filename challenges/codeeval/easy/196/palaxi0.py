import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        numeros = re.findall("\d",stringe)
        palabras = re.findall("[a-zA-Z]+",stringe)
        cont = 0
        lista = []
        for i in range(1,len(numeros),2):
            lista.append(numeros[i]+palabras[cont]+numeros[i-1])
            cont+=1
        print (" ".join(lista))