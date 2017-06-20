"""Suma cuadrado diferencia"""


def cuadrado_numeros():
    """Calcula la sumatoria de los cuadrados"""
    numeros = range(1, 101)
    sumatoria = 0
    for i in numeros:
        cuadrado = i ** 2
        sumatoria += cuadrado
    return sumatoria


def cuadrado_sumatoria():
    """Calccula el cuadrado de la sumatoria"""
    numeros = range(1, 101)
    sumatoria = 0
    for i in numeros:
        sumatoria += i
        resultado = sumatoria ** 2
    return resultado


def diferencia():
    """Calcula la diferencia entre las operaciones"""
    dif = cuadrado_sumatoria() - cuadrado_numeros()
    print dif


diferencia()
