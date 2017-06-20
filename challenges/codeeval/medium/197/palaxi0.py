
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        start = ord("A")
        number = int(test)
        char = chr((number-1)%26+start)
        while number >= 26:
            number = (number // 26) - 1
            char = chr(number % 26 + start) + char
        print (char)
