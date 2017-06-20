import sys

test_cases = open(sys.argv[1], 'r')
    
suma_lineas = 0
for linea in test_cases:
    suma_lineas=suma_lineas + int (linea)

print suma_lineas
