"""Redondeo"""
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
    VALORES = VALORES
    SEPARAR = VALORES.split()
    PRIMEROS.append(SEPARAR[0])
    SEGUNDOS.append(SEPARAR[1])
    i = i + 1

while k < CANTIDAD:

    DIVISION = float(PRIMEROS[k]) / float(SEGUNDOS[k])

    if DIVISION > 0:
        PROXIMO = int(DIVISION) + 1

    else:
        PROXIMO = int(DIVISION) - 1

    DIFERENCIA = PROXIMO - DIVISION

    if DIFERENCIA < 0.6:
        REDONDEO = PROXIMO
        TOTAL.append(REDONDEO)

    else:
        REDONDEO = int(DIVISION)
        TOTAL.append(REDONDEO)

    k = k + 1

print TOTAL
