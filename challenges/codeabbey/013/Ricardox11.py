#!/usr/bin/env python
"""Weighted sum of digits.py"""

RANGC = int(raw_input("Por favor digitar N: "))  # lee N valores a procesar
RESUL2 = ""
VALORES = raw_input("Dato: ")  # captura valores1
VALORES = VALORES.split(" ")  # separa en cadena

for y in range(RANGC):

    temporal = int(VALORES[y])  # lee cada valor
    temporaldiv = 0
    resultado = 0
    nvalor = len(str(temporal))  # longitud de valores a sumar
    nvalor1 = nvalor
    for i in range(nvalor):
        temporaldiv = (temporal % 10)  # usa modo para separar
        temporal = (temporal / 10)  # calcula siguiente numero
        resultado = resultado + (temporaldiv * (nvalor1))  # sum val mult pos
        nvalor1 = nvalor1 - 1

    RESUL2 = RESUL2 + " " + str(resultado)  # concatena resultados

print RESUL2.strip()
