#!/usr/bin/env python
"""This script calculates the number of performed
swaps and checksum of the array after processing."""
DATOS = raw_input()
NUMEROS = list(map(int, DATOS.split()))
A = NUMEROS[:-1]
NUMERODATOS = len(A)
PASA = 0
for i in range(NUMERODATOS - 1):
    if A[i] > A[i + 1]:
        temporal = A[i + 1]
        A[i + 1] = A[i]
        A[i] = temporal
        PASA += 1
RESULTADO = 0
LIMITE = 10000007
for n in range(NUMERODATOS):
    RESULTADO = (RESULTADO + A[n]) * 113
    if RESULTADO > LIMITE:
        RESULTADO = RESULTADO % LIMITE
print PASA, RESULTADO
