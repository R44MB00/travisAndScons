"""This script divides the string in 2 characteres, it performs the conversion
from hex to decimal, it does the xor operation of each decimal with
the number 79 and finally converts to ASCII character the final result"""
DATOS = raw_input()
CANTIDAD = len(DATOS)
A = 0
OPERACION = []
NUMERO_CONVERTIDO = []
while A < CANTIDAD:
    E = DATOS[A], DATOS[A + 1]
    A += 2
    SEPARADOR = ''.join(E)
    OPERACION.append(str(SEPARADOR))
CANTIDAD2 = len(OPERACION)
B = 0
while B < CANTIDAD2:
    DECIMAL = int(OPERACION[B], 16)
    B += 1
    NUMERO_CONVERTIDO.append(DECIMAL)
C = 0
while C < CANTIDAD2:
    XOR = NUMERO_CONVERTIDO[C] ^ 79
    C += 1
    print chr(XOR)
