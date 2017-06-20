#!/usr/bin/env python
"""This script calculates minumum printing times
for each of testcases, separated by spaces."""
import math
DATOS = int(input())
RESPUESTA = []
for hojas in range(DATOS):
    valores = map(int, raw_input().split())
    x, y, n = float(valores[0]), float(valores[1]), float(valores[2])
    maximo = max(x, y)
    minimo = min(x, y)
    maximo_tiempo = math.ceil(n * minimo / (x + y)) * int(maximo)
    minimo_tiempo = math.ceil(n * maximo / (x + y)) * int(minimo)
    RESPUESTA.append(str(int(min(maximo_tiempo, minimo_tiempo))))
print ' '.join(RESPUESTA)
