"""This script This script converts from binary to decimal"""
DATOS = raw_input().split(" ")
CANTIDAD = len(DATOS)
A = 0
RESPUESTA = []
while A < CANTIDAD:
    RESPUESTA.append(int(DATOS[A], 2))
    A += 1
print ''.join(str(RESPUESTA))
