#!/usr/bin/env python
"""This script calculates N-th member's value
for each test-case, separated by spaces."""
DATOS = int(input())
for lineal in range(DATOS):
    valores = raw_input().split()
    a, c, m = int(valores[0]), int(valores[1]), int(valores[2])
    x, n = int(valores[3]), int(valores[4])
    for resultado in range(n):
        x = (a * x + c) % m
    print x, ''
