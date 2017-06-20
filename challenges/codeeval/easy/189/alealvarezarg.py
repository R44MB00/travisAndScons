
import sys

def stringtoint(array):
    array2 = []
    count = 0
    while(count < len(array)):
        array2.append(int(array[count]))
        count = count + 1
    return array2

entrada = open(sys.argv[1], 'r')

# entrada = ["4 3 3 5 7","3 20 30 40"]

for linea in entrada:
    
    linea = stringtoint(linea.split()[1::])
    
    mim = 999999999
    
    count = 1
    while(count < max(linea)+1):
        suma = 0
        for item in linea:
            suma = suma + abs(item - count)
        mim = min(suma,mim)
        count = count + 1
    
    print(mim)

entrada.close()
