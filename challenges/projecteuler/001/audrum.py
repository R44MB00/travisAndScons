"""Calcula suma de multiplos de 3 o 5"""


def main():
    """Solicita el valor"""
    hasta = int(raw_input("Digite el numero: "))
    sumatoria(hasta)


def sumatoria(rango):
    """Calcula la suma de los numeros hasta el rango ingresado"""
    total = 0
    for numero in range(rango):
        if numero % 3 == 0 or numero % 5 == 0:
            total += numero
    print "La suma de todos los multiplos de 3 o 5 es:", total


main()
