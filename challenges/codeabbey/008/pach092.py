#!/usr/bin/env python
"""This script calculates the sum of first members of arithmetic sequence."""
DATOS = int(raw_input())
for progresion in range(DATOS):
    valores = map(int, raw_input().split())
    a, b, n = int(valores[0]), int(valores[1]), int(valores[2])
    total = 0
    for x in range(n):
        total = (a + (b * x)) + total
    print total, ''
