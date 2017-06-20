"""Get the even palindromic subranges"""
import sys


def ispalindrom(num):
    """Know if a number is palindrom"""
    return str(num) == str(num)[::-1]

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        bot = int(line.split(" ")[0])
        top = int(line.split(" ")[1])
        lista = range(bot, top+1)
        subranges = 0
        for i in range(0, len(lista)):
            for j in range(i, len(lista)):
                palins = 0
                for item in lista[i:j+1]:
                    if ispalindrom(item):
                        palins += 1
                if palins % 2 == 0:
                    subranges += 1
        print subranges
