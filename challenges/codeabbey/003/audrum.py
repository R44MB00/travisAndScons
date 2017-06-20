"""SUMA EN LOOP"""
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
    SUMA = int(PRIMEROS[int(k)]) + int(SEGUNDOS[int(k)])
    TOTAL.append(SUMA)
    k = k + 1

print TOTAL
