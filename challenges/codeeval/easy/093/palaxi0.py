import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista2 = test.strip().split(" ")
        lista3 = []
        for item in lista2:
            lista3.append(item[0].upper() + item[1:])
        print (" ".join(lista3))
