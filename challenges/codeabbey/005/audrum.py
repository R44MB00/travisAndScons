"""Minimo de tres"""
CANTIDAD = input("Cantidad de valores: ")
CANTIDAD = int(CANTIDAD)

i = 0
k = 0
SUMA = 0
SEPARAR = 0
TOTAL = []

PRIMEROS = []
SEGUNDOS = []
TERCEROS = []

while i < CANTIDAD:

    VALORES = input("Ingrese los valores: ")
    SEPARAR = VALORES.split()
    PRIMEROS.append(SEPARAR[0])
    SEGUNDOS.append(SEPARAR[1])
    TERCEROS.append(SEPARAR[2])
    i = i + 1

while k < CANTIDAD:
    if PRIMEROS[k] < SEGUNDOS[k]:
        if PRIMEROS[k] < TERCEROS[k]:
            TOTAL.append(PRIMEROS[k])

        else:
            TOTAL.append(TERCEROS[k])

    else:
        TOTAL.append(SEGUNDOS[k])

    k = k + 1

print TOTAL
