"""Highly divisible triangular number"""


def triangle_number(number):
    """Do the sumatory"""
    result = (number * (number + 1)) / 2
    return int(result)


def multi(value):
    """Multiples"""
    multiples = []
    for i in range(1, value + 1):
        if value % i == 0:
            multiples.append(i)
        else:
            continue
    return len(multiples)


def cicles():
    """Execute n cicles"""
    numero = 0
    triangle = 0
    while multi(triangle) < 500:
        triangle = triangle_number(numero)
        print "El numero", triangle, "tiene", multi(triangle), "multiplos"
        numero += 1


cicles()
