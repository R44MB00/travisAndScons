"""Proper Bracket Sequences """


def factorial_calc(fac_n):
    """Calculo del factorial de los factores"""
    numm = 1
    for char in range(1, fac_n+1):
        numm = numm*char
    return numm


def catalan_formula(numn):
    """aplicacion formula # catalan"""
    c_num = (factorial_calc(2*numn)) / \
        (factorial_calc(numn)*factorial_calc(numn+1))
    return c_num


def main():
    """Procesando datos de entrada"""
    num = int(raw_input("Ingrese numero parentesis: "))
    catalan = catalan_formula(num)
    print catalan


main()
