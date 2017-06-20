"""
Title: Counting Primes
CodeEval: Moderate
url: https://www.codeeval.com/open_challenges/63/
"""
def counting_primes(file):
    """
    return the num the primes in a range
    file:  path to a filename,  Each line in this file contains two comma separated positive integers
    """
    for line in file:
        con = 0
        line = line.rstrip("\n").split(',')
        a = int(line[0])
        b = int(line[1])
        for num in range(a, b+1):
            if isprime(num):
                con += 1
        print con
def isprime(num):
    """
    auxiliar function
    return True if the num is prime
    num: enter the value to compute
    """
    if num == 2:
        return True
    else:
        con = 0
        for div in range(1, num+1):
            if num % div == 0:
                con += 1
        if con == 2:
            return True
        else:
            return False
#--------------------------Test----------------------------------
#for n in range(1,10):
#    print n, isprime(n)
path = raw_input("Please enter the rute to the file: ")
file = open(path)
counting_primes(file)
#--------------------------end_test------------------------------
