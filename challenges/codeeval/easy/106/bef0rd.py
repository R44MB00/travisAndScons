import sys
import string

romanNumeralMap = (('M',  1000),
                   ('CM', 900),
                   ('D',  500),
                   ('CD', 400),
                   ('C',  100),
                   ('XC', 90),
                   ('L',  50),
                   ('XL', 40),
                   ('X',  10),
                   ('IX', 9),
                   ('V',  5),
                   ('IV', 4),
                   ('I',  1))

def aRomano(n):
    r = ""
    for numeral, integer in romanNumeralMap:
        while n >= integer:
            r += numeral
            n -= integer
    return r

    
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    num = int(test)
    print aRomano(num)
