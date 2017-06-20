"""PRIME1 - Prime generator"""


def primes(val1, val2):
    """Verify is if Prime"""
    if val2 < 2:
        return []
    confirm = [True] * (val2 + 1)
    confirm[0] = False
    confirm[1] = False
    for i in range(2, int(val2 ** 0.5) + 1):
        if confirm[i]:
            for j in range(i ** 2, val2 + 1, i):
                confirm[j] = False
    for i in range(val1, val2 + 1):
        if confirm[i]:
            print i


def calcular():
    """Read the input"""
    number = int(input())
    val = list()
    for i in range(number):
        val.append(input().split())
    for i in range(number):
        if (int(val[i][0]) >= 1 and int(val[i][1]) <= 1000000000 and
                int(val[i][1]) - int(val[i][0]) <= 100000):
            primes(int(val[i][0]), int(val[i][1]))
            if i != number - 1:
                print ""


calcular()
