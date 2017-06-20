"""This script converts decimals to concatenated
8-bit binaries and returns the answer in decimal"""
DATOS = raw_input().split(", ")
RESPUESTA = []
for decimal_binario in DATOS:
    binario = format(int(decimal_binario), '08b')
    RESPUESTA.append(binario)
CONVERTIR = ''.join(RESPUESTA)
print int(CONVERTIR, 2)
