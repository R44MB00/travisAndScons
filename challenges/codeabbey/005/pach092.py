#!/usr/bin/env python
"""This script looks for the minimum value
of each string and returns the answer"""
DATOS = int(raw_input())
for minimo in range(DATOS):
    valores = raw_input().split()
    a, b, c = int(valores[0]), int(valores[1]), int(valores[2])
    res = min(a, b, c)
    print res, ''
