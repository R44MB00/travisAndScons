import sys

def isPrime(n):
    for i in xrange(2, n+1):
        if n%i==0:
            return False
    return True

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        b=2
        e=2
        x=b**e
        s=""
        while x-1<int(test):
            if isPrime(x-1):
                s+=str(x-1)+", "
            e+=1
            x=b**e
        s=s[:-2]
        print s
