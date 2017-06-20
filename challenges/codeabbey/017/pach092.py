#!/usr/bin/env python
"""This script calculates an array's checksum"""
MULTIPLICAR = 113
DIVIDIR = 10000007
RESPUESTA = 0
DATOS = int(raw_input())
CHECKSUM = raw_input().split()
for a in CHECKSUM:
    RESPUESTA = (RESPUESTA + int(a))*MULTIPLICAR
print RESPUESTA % DIVIDIR
