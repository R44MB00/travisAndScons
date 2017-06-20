"""Minimo de dos"""
CANTIDAD = input("Cantidad de valores: ")
CANTIDAD = int(CANTIDAD)

i = 0
k = 0
SUMA = 0
SEPARAR = 0
TOTAL = []

PRIMEROS = []
SEGUNDOS = []

while i < CANTIDAD:

    VALORES = input("Ingrese los valores: ")
    SEPARAR = VALORES.split()
    PRIMEROS.append(SEPARAR[0])
    SEGUNDOS.append(SEPARAR[1])
    i = i + 1

while k < CANTIDAD:
    if PRIMEROS[k] > SEGUNDOS[k]:
        TOTAL.append(SEGUNDOS[k])

    else:
        TOTAL.append(PRIMEROS[k])

    k = k + 1

print TOTAL
