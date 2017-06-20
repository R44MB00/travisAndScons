"""This script searches the uppercase of a string and prints it"""
DATOS = raw_input()
CANTIDAD = len(DATOS)
RESPUESTA = []
A = 0
while A < CANTIDAD:
    if DATOS[A].isupper():
        RESPUESTA.append(DATOS[A])
    A += 1
print ''.join(RESPUESTA)
