#!/usr/bin/env python
"""This script counts the exactly N values, separated by spaces.
First should give amount of 1-s, second - amount of 2-s and so on."""
RANGO = raw_input()
RANGO, NUMEROS = RANGO.split()
NUMEROS = int(NUMEROS)
CONTADOR = [0] * NUMEROS
NUMERADOR = raw_input()
NUMERADOR = NUMERADOR.split()
for j in NUMERADOR:
    j = int(j)
    CONTADOR[j - 1] += 1
print " ".join(str(respuesta) for respuesta in CONTADOR)
