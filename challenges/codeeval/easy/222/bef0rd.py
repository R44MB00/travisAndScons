import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    nombres, numero = test.split(" | ")
    numero = int(numero)
    nombres = nombres.split(" ")
    while len(nombres) > 1:
        #print nombres
        indice = 0
        for i in range(1, numero+1):
            indice = indice + 1
            if indice > len(nombres):
                indice = 1
        del nombres[indice - 1]
    print nombres[0]
    #exit()
