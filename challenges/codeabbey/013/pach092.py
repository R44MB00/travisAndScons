#!/usr/bin/env python
"""This script multiplies each digit by its position."""
DATOS = int(raw_input())
NUMEROS = raw_input().split()
for a in NUMEROS:
    suma = 0
    for a, n in enumerate(a):
        a += 1
        suma += int(n) * a
    print suma, ''
