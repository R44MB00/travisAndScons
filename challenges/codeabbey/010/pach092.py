#!/usr/bin/env python
"""This script determines a and b bytwo points, belonging to a function."""
DATOS = int(raw_input())
for funcion in range(DATOS):
    valores = map(int, raw_input().split())
    a, b = int(valores[0]), int(valores[1])
    c, d = int(valores[2]), int(valores[3])
    pendiente = (d - b) / (c - a)
    m = int(pendiente)
    intercepcion = (b - m * a)
    g = int(intercepcion)
    print "(" + str(m), str(g) + ") "
