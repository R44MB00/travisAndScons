import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    longitud=len(test)
    array=[]
    for i in range(0,longitud-1,1):
        array.append(int(test[i]))
    def unidades(x):
        return {
            1: 'I',
            2: 'II',
            3: 'III',
            4: 'IV',
            5: 'V',
            6: 'VI',
            7: 'VII',
            8: 'VIII',
            9: 'IX',
        }.get(x, "") 
    def decenas(x):
        return {
            10: 'X',
            20: 'XX',
            30: 'XXX',
            40: 'XL',
            50: 'L',
            60: 'LX',
            70: 'LXX',
            80: 'LXXX',
            90: 'XC',
        }.get(x, "")
    def centenas(x):
        return {
            100: 'C',
            200: 'CC',
            300: 'CCC',
            400: 'CD',
            500: 'D',
            600: 'DC',
            700: 'DCC',
            800: 'DCCC',
            900: 'CM',
        }.get(x, "")
    def miles(x):
        return {
            1000: 'M',
            2000: 'MM',
            3000: 'MMM',
        }.get(x, "")
    if(longitud==5):
        array[0]=int(array[0])*1000
        print(miles(array[0]), end='')
        array[1]=int(array[1])*100
        print(centenas(array[1]), end='')
        array[2]=int(array[2])*10
        print(decenas(array[2]), end='')
        print(unidades(array[3]))
    if(longitud==4):
        array[0]=int(array[0])*100
        print(centenas(array[0]), end='')
        array[1]=int(array[1])*10
        print(decenas(array[1]), end='')
        print(unidades(array[2]))
    if(longitud==3):
        array[0]=array[0]*10
        print(decenas(array[0]), end='')
        print(unidades(array[1]))
    #print(array)


    #print(unidades(array[0]))

test_cases.close()
