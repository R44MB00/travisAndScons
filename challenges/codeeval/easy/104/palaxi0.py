
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        diccionario = {"zero":"0","one":"1","two":"2","three":"3", "four":"4", "five":"5","six":"6","seven":"7", "eight":"8","nine":"9"}
        lista = test.strip().split(';')
        final =""
        for item in lista:
            final += diccionario[item]
        print (final)
