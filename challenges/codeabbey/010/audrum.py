"""Funcion lineal"""


def calcular_a(x_1, y_1, x_2, y_2):
    """Calcula el valor de A"""
    valor_a = (y_2 - y_1)/(x_2 - x_1)
    return valor_a


def calcular_b(val_y1, val_x1, val_a):
    """Calcula el valor de B"""
    valor_b = val_y1 - (val_a * val_x1)
    return valor_b


def ciclo(cantidad):
    """Ejecuta las operaciones n veces"""
    i = 0
    resultado = []
    while i < cantidad:
        valores = input("Ingrese los valores: ")
        separar = valores.split()
        valor_x1 = int(separar[0])
        valor_y1 = int(separar[1])
        valor_x2 = int(separar[2])
        valor_y2 = int(separar[3])
        resultado_a = calcular_a(valor_x1, valor_y1, valor_x2, valor_y2)
        resultado_b = calcular_b(valor_y1, valor_x1, resultado_a)
        resultado.append(resultado_a)
        resultado.append(resultado_b)
        i += 1
    print resultado


def main():
    """Solicita la cantidad de funciones a calcular"""
    valores = input("Digite la cantidad de funciones: ")
    valores = int(valores)
    ciclo(valores)


main()
