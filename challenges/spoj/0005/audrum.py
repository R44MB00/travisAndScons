"""PALIN - The Next Palindrome"""


def main():
    """Genera multiplicacion de los digitos"""
    valores = []
    j = 0
    casos = int(raw_input(""))
    while j < casos:
        primero = int(raw_input(""))
        valores.append(primero)
        j += 1
    for k in valores:
        i = k + 1
        while True:
            if palindromo(i) is True:
                break
            i += 1
        print i


def invertir_digitos(num):
    """Invierte el numero"""
    num_string = str(num)
    num_inverso = ""
    largo = len(num_string)

    for i in range(largo - 1, -1, -1):
        num_inverso += num_string[i]

    return int(num_inverso)


def palindromo(valor):
    """Calcula si es palindromo"""
    if valor == invertir_digitos(valor):
        return True


main()
