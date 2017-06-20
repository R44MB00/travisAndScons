import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        suma = 0
        lista= list(str(test.strip()))
        for i in lista:
            suma += int(i)**len(lista)
        if suma == int(test.strip()):
            print ("True") 
        else:
            print ("False")
