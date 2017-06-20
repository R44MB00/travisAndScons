"""This script writes the string of the same length
with the same characters but in reverse order."""
TEXTO = raw_input()
CANTIDAD = len(TEXTO)
A = CANTIDAD
RESPUESTA = []
while A != 0:
    RES = TEXTO[A - 1]
    A -= 1
    RESPUESTA.append(str(RES))
print ''.join(RESPUESTA)
