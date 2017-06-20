"""Pitagorean Triplet"""


def calcular_pitagoras():
    """Calcula cuadrado"""
    for valor_a in range(3, 1000):
        for valor_b in range(valor_a + 1, 999):
            cuadrado = valor_a ** 2 + valor_b ** 2
            valor_c = cuadrado ** 0.5

            if valor_a + valor_b + valor_c == 1000:
                producto = valor_a * valor_b * valor_c
                print producto
                break


calcular_pitagoras()
