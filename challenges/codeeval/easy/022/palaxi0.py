
import sys

def fibo(n):
    if n == 0 or n == 1:
        return n
    else:
        return fibo(n-1)+fibo(n-2)
    
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        num = int(test.strip())
        print (fibo(num))
