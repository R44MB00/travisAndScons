"""This script replaces the a and b of the string with 0 and 1 respectively,
then divides the string into bytes and CONverts it to integer,
finally the integer CONverts it to an ASCII character"""
DATOS = raw_input()
CANTIDAD = len(DATOS)
SEPARADOS = []
CON = 0
BINARIO = []
RESPUESTA = []
DECIMAL = []
while CON < CANTIDAD:
    if DATOS[CON] == 'a':
        BINARIO.append(str(0))
    else:
        BINARIO.append(str(1))
    CON += 1
UNIR = ''.join(BINARIO)
CON = 0
while CON < CANTIDAD:
    CADENA = UNIR[CON], UNIR[CON + 1], UNIR[CON + 2], UNIR[CON + 3],\
                    UNIR[CON + 4], UNIR[CON + 5], UNIR[CON + 6], UNIR[CON + 7]
    CON += 8
    OCTAL = ''.join(CADENA)
    SEPARADOS.append(str(OCTAL))
CANTIDAD_2 = len(SEPARADOS)
CON = 0
while CON < CANTIDAD_2:
    ENTERO = int(SEPARADOS[CON], 2)
    DECIMAL.append(ENTERO)
    LETRA = chr(DECIMAL[CON])
    CON += 1
    RESPUESTA.append(str(LETRA))
print ''.join(RESPUESTA)
