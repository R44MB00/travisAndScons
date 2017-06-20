#!/usr/bin/python
'''CodeAbbey Triangles Result'''


def calcsuma(sidea, sideb, sidec):
    '''Returns the sum of the sides divided by 2'''
    return (sidea + sideb + sidec)/2


def calcsqrt(sidea, sideb, sidec, suma):
    '''Returns the inside of the SQRT area formula'''
    return suma * ((suma - sidea) * (suma - sideb) * (suma - sidec))


def main():
    '''Function main'''
    nval = raw_input()
    response = ''
    for dummy in range(int(nval)):
        sidea, sideb, sidec = raw_input().split()
        suma = calcsuma(int(sidea), int(sideb), int(sidec))
        sqrtres = calcsqrt(int(sidea), int(sideb), int(sidec), suma)
        if sqrtres > 0:
            response = response + '1 '
        else:
            response = response + '0 '
    print response


main()
