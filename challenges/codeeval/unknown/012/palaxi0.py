"""Script para encontrar el primer caracter que no se repite"""
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        result = ""
        for i in range(0, len(line)):
            if line.count(line[i]) == 1:
                result = line[i]
                break
        print (result)
        