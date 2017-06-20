import sys
test_cases = open(sys.argv[1], 'r')

for test in test_cases:
    print int(test, 16) #Utilice el tipo int con el argumento de base 16 para pasa a Hex
test_cases.close()
