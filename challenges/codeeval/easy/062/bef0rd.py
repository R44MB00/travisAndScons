import sys
import string

def modulo(m, p):

    d = int(m) / int(p)
    #print m, p, d, int(m) - (int(p)*d)
    return int(m) - (int(p)*d)
    
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    num = test.split(",")
    print modulo(num[0], num[1])
