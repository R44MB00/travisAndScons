"""Suma de pares fibonacci"""


def fibonacci(numero):
    """Calcula la suma de numeros pares"""
    valor_a, valor_b = 0, 1
    sumatoria = 0
    while valor_a < numero:
        print valor_a
        valor_a, valor_b = valor_b, valor_a + valor_b
        if int(valor_a) % 2 == 0:
            sumatoria += valor_a
    print "La sumatoria es", sumatoria


fibonacci(4000000)
