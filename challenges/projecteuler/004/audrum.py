"""Palindromo mas grande"""


def multiplicacion():
    """Genera multiplicacion de los digitos"""
    primeros = range(100, 1000)
    segundos = range(100, 1000)

    for i in primeros:
        for j in segundos:
            multi = i * j
            palindromo(multi)


def invertir_digitos(num):
    """Invierte el numero"""
    num_string = str(num)
    num_inverso = ""
    largo = len(num_string)

    for i in range(largo - 1, -1, -1):
        num_inverso += num_string[i]

    return int(num_inverso)


def palindromo(valor):
    """Calcula si es palindromo"""
    if valor == invertir_digitos(valor):
        print valor, "es palindromo"


multiplicacion()
