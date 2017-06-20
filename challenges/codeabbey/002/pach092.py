#!/usr/bin/env python
"""This script adds a string and returns the answer"""
DATOS = raw_input()
VALORES = raw_input().split()
SUMA = 0
for sumatoria in VALORES:
    SUMA += int(sumatoria)
print SUMA
