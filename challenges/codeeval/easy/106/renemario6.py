# -*- coding: utf-8 -*-
import sys
import collections

def romanNumber(num):
	#print "D:",romanos
	keys = romanos.keys()
	while num > 0:
		for n,j in enumerate(romanos):
			if j > num: 
				sys.stdout.write("%s" % romanos.values()[n-1],)
				num-=keys[n-1]
				break
			elif n + 1 >= len(romanos):
				sys.stdout.write("%s" % romanos.values()[n],)
				num-=keys[n]
				break

archivo = open(sys.argv[1], 'r')
values = {
    1: 'I',
    2: 'II',
    3: 'III',
    4: 'IV',
    5: 'V',
    6: 'VI',
    7: 'VII',
    8: 'VIII',
    9: 'IX',
    10: 'X',
    20: 'XX',
    30: 'XXX',
    40: 'XL',
    50: 'L',
    60: 'LX',
    70: 'LXX',
    80: 'LXXX',
    90: 'XC',
    100: 'C',
    200: 'CC',
    300: 'CCC',
    400: 'CD',
    500: 'D',
    600: 'DC',
    700: 'DCC',
    800: 'DCCC',
    900: 'CM',
    1000: 'M',
    2000: 'MM',
    3000: 'MMM'
}
romanos = collections.OrderedDict(sorted(values.items()))

for i in archivo:
	line = i.strip()
	if line:
		romanNumber(int(line))
	print
archivo.close()
