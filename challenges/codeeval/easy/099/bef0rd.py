import sys
import math

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    test = test.replace(",", "").replace(")", "").replace("(", "")
    n1, n2, n3, n4 = [int(z) for z in test.split(" ")]
    
    print int(math.sqrt((n1 - n3) ** 2 + (n2 - n4) ** 2))
