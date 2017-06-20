
"""Sumatoria de primos"""


def es_primo(valor_n):
    """Valida si es primo"""
    if valor_n < 2:
        return "No es primo"
    for i in range(2, int(valor_n**0.5) + 1):
        if valor_n % i == 0:
            return False
    return True


def main():
    """Calcula el numero"""
    suma = 0
    for i in range(2, 2000000):
        if es_primo(i):
            suma += i

    print suma


main()
