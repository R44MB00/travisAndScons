import sys
import string


def cambio(n):
    m5 = m3 = m1 = 0
    while n >= 5:
        n = n - 5
        m5 = m5 + 1
    while n >= 3:
        n = n - 3
        m3 = m3 + 1
    m1 = n
    return m1 + m3 + m5

    
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    num = int(test)
    print cambio(num)
