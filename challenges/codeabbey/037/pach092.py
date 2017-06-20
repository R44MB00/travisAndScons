#!/usr/bin/env python
"""This script calculates the required monthly payment M rounded up."""
DATOS = raw_input().split()
P, i, M = int(DATOS[0]), (int(DATOS[1]) / 100.0) / 12, int(DATOS[2])
MENSUALIDAD = P*(i*(1+i)**M)/((1+i)**M-1)
print round((MENSUALIDAD))
