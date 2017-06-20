import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test = list(str(test.strip()))
        suma = 0
        for i in test:
            suma += int(i)
        print (suma)
