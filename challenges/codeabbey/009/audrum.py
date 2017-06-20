"""Triangulos"""


def ciclo(veces):
    """Ejecuta la cantidad de ciclos"""
    i = 0
    resultado = []
    while i < veces:
        longitudes = input("Ingrese las longitudes: ")
        separar = longitudes.split()
        lado_a = int(separar[0])
        lado_b = int(separar[1])
        lado_c = int(separar[2])
        triangulo = calcular_triangulo(lado_a, lado_b, lado_c)
        resultado.append(triangulo)
        i += 1
    print resultado


def calcular_triangulo(la_1, la_2, la_3):
    """Calcula si es triangulo o no"""
    if la_1 + la_2 > la_3 and la_1 + la_3 > la_2 and la_2 + la_3 > la_1:
        return 1

    return 0


def main():
    """Solicita la cantidad de triangulos"""
    cantidad = input("Ingrese la cantidad de triangulos: ")
    cantidad = int(cantidad)
    ciclo(cantidad)


main()
