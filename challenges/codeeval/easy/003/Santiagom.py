import sys


def contarRango(arrayPalindromos):
    resultado = 0

    for width in range(1, len(arrayPalindromos)+1):
        for start in range(len(arrayPalindromos)):
            if start + width > len(arrayPalindromos):
                break

            count = 0
            for i in range(start, start+width):
                if arrayPalindromos[i]:
                    count += 1

            if count % 2 == 0:
                resultado += 1

    return resultado


def esPalindromo(x):
    x = str(x)

    counter = 0
    while counter <= len(x)/2:
        left = x[counter]
        right = x[len(x) - counter - 1]

        if left != right:
            return False

        counter += 1

    return True

#test_cases = open('test.txt')
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()

    R = int(test.split(" ")[1])
    L = int(test.split(" ")[0])


    arrayPalindromos = []

    for i in range(L, R+1):
        arrayPalindromos.append(esPalindromo(i))

    print contarRango(arrayPalindromos)

test_cases.close()
