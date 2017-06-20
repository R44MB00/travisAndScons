import sys

def procesar_datos(casas, casa):
    diferencia = 0
    for h in casas:
        diferencia += abs(h - casa)
    return diferencia

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    # ignore test if it is an empty test
    # 'test' represents the test case, do something with it
    # ...
    # ...

    if test == "":
        pass

    casas = sorted([int(x) for x in test.split(' ')[1:]])
    diferencia = float("inf")
    for casa in casas:
        diferencia = min(diferencia, procesar_datos(casas, casa))
    print diferencia

test_cases.close()
