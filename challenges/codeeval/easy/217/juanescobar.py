import sys

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()

    if test == "":
        pass

    data1 = int(test.split(' ')[0])
    data2 = int(test.split(' ')[1])
    output = 0
    rango = data2 + 1

    for i in range(1, rango):
        binario = '{0:b}'.format(i)
        cero = binario.count('0')
        if cero == data1: 
            output += 1
        else:
            pass

    print output

test_cases.close()
