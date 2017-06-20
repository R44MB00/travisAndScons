"""Menor multiplo"""


def mayor_comun_divisor(num1, num2):
    """Calcula el mayor comun divisor"""
    if num1 == num2:
        return num1

    while num2 != 0:
        resultado = num1 % num2
        num1 = num2
        num2 = resultado
    return num1


def minimo_comun_multiplo(valor1, valor2):
    """Calcula el minimo comun multiplo"""
    return int(valor1 * valor2 / mayor_comun_divisor(valor1, valor2))


def main():
    """Inicia la operacion"""
    respuesta = 1
    for i in range(2, 21):
        respuesta = minimo_comun_multiplo(i, respuesta)
    print "Respuesta:", respuesta


main()
