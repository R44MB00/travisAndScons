"""Calcula los factores primos de un numero"""


def factor_primo(numero):
    """Calcula los factores primos"""
    factor = 2
    while numero != 1:
        if numero % factor == 0:
            print factor
            numero = numero / factor
        else:
            factor += 1


def pedir_numero():
    """Solicita el numero al usuario"""
    valor = int(raw_input("Ingrese el numero para calcular factores primos: "))
    factor_primo(valor)


pedir_numero()
