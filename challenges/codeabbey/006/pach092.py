#!/usr/bin/env python
"""This script divides the values of each string and returns
the rounded answer to the nearest value"""
DATOS = int(raw_input())
for redondeo in range(DATOS):
    valores = raw_input().split()
    a, b = float(valores[0]), float(valores[1])
    res = a / b
    respuesta = round(res)
    print int(respuesta), ''
