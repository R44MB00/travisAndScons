import math
def isPrime(num):
    if num<2:
        return False
    for i in xrange(2,math.sqrt(num)+1):
        if num%i==0:
            return False
    return True


import sys
infile = open(sys.argv[1],'r')
try:
    for line in infile:
        result=[str(i) for i in xrange(int(line)) if isPrime(i)]
        print ','.join(result)
finally:
    infile.close()
