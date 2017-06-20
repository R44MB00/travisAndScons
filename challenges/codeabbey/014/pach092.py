#!/usr/bin/env python
"""This script gives remainder of the result of all operations applied
sequentially (starting with initial number) divided by the last number."""
DATOS = int(raw_input())
while 1 == 1:
    CADENA = raw_input().split()
    OPERADOR = CADENA[0]
    NUMERO = int(CADENA[1])
    if OPERADOR == '%':
        RESPUESTA = DATOS % NUMERO
        print RESPUESTA
        break
    elif OPERADOR == '*':
        DATOS = DATOS * NUMERO
    else:
        DATOS = DATOS + NUMERO
