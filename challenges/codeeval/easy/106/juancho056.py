import sys

def roman(num, string=''):
    number = ((1000, 'M'), (900, 'CM'), (500, 'D'), (400, 'CD'), (100, 'C'),
                (90, 'XC'), (50, 'L'), (40, 'XL'), (10, 'X'), (9, 'IX'),
                (5, 'V'), (4, 'IV'), (1, 'I'))
    for digit, numeral in number:
        if num >= digit:
            return roman(num - digit, string + numeral)
    return string

test_cases=open ("input.txt",'r')
for test in test_cases:
    num = int(test.strip())
    print(roman(num))
