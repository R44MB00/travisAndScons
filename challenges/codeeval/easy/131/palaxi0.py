import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista1= test.strip().split(' ')
        lista2 = re.findall("[a-z]+",lista1[1])
        cuantos1 = len(lista2[0])
        signo = re.findall("\-|\+",test)[0]
        if signo == "-":
            total = int(lista1[0][0:cuantos1]) - int(lista1[0][cuantos1:])
        else:
            total = int(lista1[0][0:cuantos1]) + int(lista1[0][cuantos1:])
        print (total)
