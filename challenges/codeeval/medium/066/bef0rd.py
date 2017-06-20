import sys
import string

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    test = int(test)
    triangulo = []
    fila = []
    fila.append(1)
    triangulo.append(fila)
    if test > 1:
        fila = []
        fila.append(1)
        fila.append(1)
        triangulo.append(fila)

    for i in range(2, test):
        fila = []
        fila.append(1)
        for j in range(i-1):
            n = triangulo[i-1][j]+triangulo[i-1][j+1]
            fila.append(n)
        
        
        fila.append(1)
        triangulo.append(fila)
        
    salida = ""
    for i in triangulo:
        for j in i:
            salida += str(j) + " "
            
    print salida.strip()
