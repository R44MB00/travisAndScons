#!/usr/bin/env python
"""This script calculates GCD and LCM for each pair,
surrounded by brackets and separated by spaces."""
DATOS = int(raw_input())
for operaciones in range(DATOS):
    valores = map(int, raw_input().split())
    temporal = (valores[0]) * (valores[1])
    while valores[0] != valores[1]:
        valores.sort()
        valores[1] = (valores[1]) - (valores[0])
    mcd = valores[0]
    mcm = temporal / mcd
    print '(' + str(mcd) + ' ' + str(mcm) + ') '
