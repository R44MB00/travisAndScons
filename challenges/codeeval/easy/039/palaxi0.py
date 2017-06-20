
import sys
def squares(n,itera):
    num = str(n)
    lista = []
    suma = 0
    recur = itera
    if recur < 10:
        for i in num:
            lista.append(int(i))
        for i in lista:
            suma += (i**2)
        if suma == 1:
            return suma
        else:
            recur += 1
        return squares(suma,recur)
    else:
        return 0
        
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        iterar = 0
        print (squares(stringe,iterar))
