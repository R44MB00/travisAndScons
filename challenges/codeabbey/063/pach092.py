"""This script contains product representation for each
of these integers, written like p1*p2*p3 where p1 ... p3
are some primes sorted in non-decreasing order."""
AMOUNT = input()


def operation():
    """This def makes the operatio for the MCM"""
    testnumbers = int(raw_input())
    __firstinteger__ = 2
    while testnumbers != 1:
        if testnumbers % __firstinteger__ == 0:
            testnumbers = testnumbers / __firstinteger__
            if testnumbers == 1:
                print str(__firstinteger__) + " "
            else:
                print str(__firstinteger__) + "*"
        else:
            __firstinteger__ += 1


for x in range(0, int(AMOUNT)):
    operation()
