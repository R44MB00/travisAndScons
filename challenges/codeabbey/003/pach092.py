#!/usr/bin/env python
"""This script sums the values of each string
and returns the response of the sums"""
DATOS = int(raw_input())
for suma in range(DATOS):
    valores = raw_input().split()
    a, b = int(valores[0]), int(valores[1])
    res = a + b
    print res, ' '
