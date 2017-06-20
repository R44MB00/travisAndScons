#!/usr/bin/env python
"""This script gives as answer 1 (if bracket order is correct) or
0 (if incorrect) for each of test-cases, separated by spaces."""
ABREN = ['(', '[', '{', '<']
CIERRAN = [')', ']', '}', '>']
DATOS = int(raw_input())
for a in range(DATOS):
    cadena = list(raw_input())
    comprueba = []
    resultado = 1
    for i in cadena:
        if i in ABREN:
            comprueba.append(i)
        elif i in CIERRAN:
            ind = CIERRAN.index(i)
            if comprueba == []:
                resultado = 0
            elif comprueba[-1] == ABREN[ind]:
                comprueba = comprueba[0:len(comprueba)-1]
            else:
                resultado = 0
    if comprueba != []:
        resultado = 0
    print resultado, ''
