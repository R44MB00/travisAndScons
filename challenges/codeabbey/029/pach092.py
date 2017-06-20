#!/usr/bin/env python
"""This script shows initial indexes of the array
members after they are reordered by sorting."""
DATOS = int(raw_input())
A = [int(x) for x in raw_input().split()]
LISTA = list((int(i) for i in A))
CANTIDAD = len(LISTA)
INFORMACION = dict()
FIN = len(LISTA)-1
for i in range(CANTIDAD):
    INFORMACION[i] = LISTA[i]
while FIN != -1:
    PASAR = -1
    for i in range(0, FIN):
        if LISTA[i] > LISTA[i + 1]:
            temporal = LISTA[i]
            LISTA[i] = LISTA[i+1]
            LISTA[i + 1] = temporal
            PASAR = i
    FIN = PASAR
RESPUESTA = ''
for i in LISTA:
    for j in range(len(LISTA)):
        if i == INFORMACION[j]:
            RESPUESTA += str(j + 1) + ' '
print RESPUESTA
