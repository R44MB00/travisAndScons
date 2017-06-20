import sys
import re
import collections

def repetidos(length, array):
    result = set()
    for i in xrange(0, len(array)):
        array1 = array[i:i+length]
        for j in xrange(i+1, len(array)):
            array2 = array[j:j+length]
            if iguales(array1, array2):
                result.add(tuple(array1))
                continue
    return result

def iguales(arr1, arr2):
    if len(arr1) != len(arr2): return False
    for i in xrange(len(arr1)):
        if arr1[i] != arr2[i]: return False
    return True

def parsear(line):
    split = line.strip().split(' | ')
    return int(split[0]), split[1], map(int, split[2].split(' '))



def decifrar(tamano_palabra_repetida, ultima_letra_palabra, mensaje_encriptado):
    repeated = repetidos(tamano_palabra_repetida, mensaje_encriptado)
    for repeat in repeated:
        n = repeat[-1] - ord(ultima_letra_palabra)
        decrypted = ''.join([chr(e-n) for e in mensaje_encriptado])
        repeat = ''.join([chr(r-n) for r in repeat])
        if collections.Counter(re.findall(r"[\w']+", decrypted))[repeat] >= 2:
            return decrypted


lines = open(sys.argv[1], 'r')
for line in lines:
    tamano_palabra_repetida, ultima_letra_palabra, mensaje_encriptado = parsear(line)
    print decifrar(tamano_palabra_repetida, ultima_letra_palabra, mensaje_encriptado)
