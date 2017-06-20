
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = list(zip((1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1),
    ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I')))
        def fromanos(convert):
            romano = []
            for numero, rom in lista:
                cuantos = convert // numero
                romano.append(rom * cuantos)
                convert -= numero * cuantos
            return ''.join(romano)
        print (fromanos(int(test)))
        # ignore test if it is an empty line
        # 'test' represents the test case, do something with it
        # ...
