"""Progresion aritmetica"""


def cal_termino_n(inicial, incremento, cantidad):
    """Calcula el termino n de la progresion"""
    termino_n = ((inicial + ((cantidad - 1) * incremento)))
    return termino_n


def sumatoria(cantidad, inicial, num_n):
    """Calcula la sumatoria"""
    suma = (cantidad * (inicial + num_n)) / 2
    return suma


def ciclo(veces):
    """Realiza el proceso n veces"""
    i = 0
    total = []
    while i < veces:
        valores = input("Ingrese los datos: ")
        separar = valores.split()
        valor_inicial = int(separar[0])
        diferencia = int(separar[1])
        terminos = int(separar[2])
        term_n = cal_termino_n(valor_inicial, diferencia, terminos)
        resultado = sumatoria(terminos, valor_inicial, term_n)
        total.append(resultado)
        i += 1
    print total


def main():
    """Lee los valores ingresados por el usuario"""
    repite = input("Ingrese la cantidad de secuencias: ")
    repite = int(repite)
    ciclo(repite)


main()
