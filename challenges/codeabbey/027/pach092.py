#!/usr/bin/env python
"""This script calculates number of passes
perfromed and total number of swaps made."""
DATOS = int(raw_input())
NUMEROS = [int(z) for z in raw_input().split()]


def orden(cadena, pasa, descartado):
    """This def calculates the swaps and passes from the array"""
    respuesta = str(pasa), str(descartado)
    arreglado = True
    pasa += 1
    for ___a___ in range(len(cadena) - 1):
        ___x___ = cadena[___a___]
        ___y___ = cadena[___a___ + 1]
        if ___x___ > ___y___:
            arreglado = False
            cadena[___a___], cadena[___a___ + 1] =\
                cadena[___a___ + 1], cadena[___a___]
            descartado += 1
    if arreglado is False:
        respuesta = orden(cadena, pasa, descartado)
    return respuesta


print ('%s %s') % orden(NUMEROS, 1, 0)
