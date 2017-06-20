"""This script converts binary numbers to ASCII characters"""
DATOS = raw_input().split()
CANTIDAD = len(DATOS)
A = 0
ENTEROS = []
RESPUESTA = []
while A < CANTIDAD:
    ENTEROS.append(int(DATOS[A], 2))
    RESPUESTA.append(chr(ENTEROS[A]))
    A += 1
print ''.join(RESPUESTA)
