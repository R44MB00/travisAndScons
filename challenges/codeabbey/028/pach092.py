#!/usr/bin/env python
"""This script contains words under, normal, over, obese for
each corresponding test-case, separated with spaces."""
DATOS = int(raw_input())
RESPUESTA = []
for a in range(DATOS):
    valores = [float(x) for x in raw_input().split(" ")]
    IMC = float(valores[0]/(valores[1]**2))
    if IMC < 18.5:
        RESPUESTA.append(str('under'))
    elif IMC < 25.0:
        RESPUESTA.append(str('normal'))
    elif IMC < 30.0:
        RESPUESTA.append(str('over'))
    else:
        RESPUESTA.append(str('obese'))
print ' '.join(RESPUESTA)
