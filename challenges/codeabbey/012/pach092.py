#!/usr/bin/env python
"""This script calculates the difference between timestamps in each pair."""
DATOS = int(raw_input())
for fechas in range(DATOS):
    b = [int(a) for a in raw_input().split()]
    d = (b[4] - b[0]) * 24 * 60 * 60\
        + (b[5] - b[1]) * 60 * 60 + (b[6] - b[2]) * 60 + (b[7] - b[3])
    dia = d / 24 / 60 / 60
    hora = d % (24 * 60 * 60) / 60 / 60
    minuto = d % (60 * 60) / 60
    segundo = d % (60)
    print '(' + str(dia) + ' ' + str(hora) + ' '\
        + str(minuto) + ' ' + str(segundo) + ')',
