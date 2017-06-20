#!/usr/bin/env python
"""This script gives the average values for
each array, rounded to nearest integer."""
DATOS = int(raw_input())
for linea in range(DATOS):
    numeros = map(int, raw_input().split())[:-1]
    promedio = round(sum(numeros) / float(len(numeros)))
    print int(promedio), ''
