#!/usr/bin/env python
"""This script counts the number of
vowels in each line, separated by spaces."""
DATOS = int(raw_input())
VOCALES = list("aeiouy")
for pasos in range(DATOS):
    oraciones = raw_input().split("\n")
    frase = oraciones[0].lower()
    contador_vocales = sum(frase.count(v) for v in VOCALES)
    print contador_vocales, ''
