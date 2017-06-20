import sys

def fibo(n):
    a, b = 1, 1
    for i in xrange(n-1):
        a, b = b, a + b
    return a

fd = open(sys.argv[1])

for line in fd.readlines():
    print fibo(int(line[:-1]))
