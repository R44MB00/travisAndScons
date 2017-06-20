#!/usr/bin/env python
"""This script looks for the minimum value
of each string and returns the answer"""
DATOS = int(raw_input())
for minimo in range(DATOS):
    valores = raw_input().split()
    a, b = int(valores[0]), int(valores[1])
    res = min(a, b)
    print res, ''
