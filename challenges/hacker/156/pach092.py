"""This script performs the xor operation of two numbers
and returns the ASCII character of the operation"""
DATOS = raw_input().split()
CANTIDAD = len(DATOS)
NUMERO_CONVERTIDO = []
A = 0
while A < CANTIDAD:
    DECIMAL = int(DATOS[A], 16)
    A += 1
    NUMERO_CONVERTIDO.append(DECIMAL)
B = 0
while B < CANTIDAD:
    XOR = NUMERO_CONVERTIDO[B] ^ NUMERO_CONVERTIDO[B + 1]
    B += 2
print chr(XOR)
