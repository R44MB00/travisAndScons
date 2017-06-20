#!/usr/bin/python3
"""Codeval challenge17"""


def get_tests():
    """Get data"""
    cases = []
    with open("sys.arg[0]", "r") as insumos:
        for i in insumos:
            cases.append(i.strip())
    return cases


def suma(lista):
    """Get max sum"""
    data = list(map(int, lista.split(',')))
    maximum = min(data)
    res = 0
    tam = len(data)
    for indx in range(tam):
        for indy in range(indx+1, tam):
            res = (sum(data[indx:indy]))
            if res > maximum:
                maximum = res
    print max


def main():
    """main function"""
    tests = get_tests()
    for integer in tests:
        suma(integer)


main()
