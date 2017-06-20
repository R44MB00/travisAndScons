"""This is the 7th problem in project euler"""


def isprime(num):
    """This function returns true whether num is prime"""
    fprime = 0
    flag = False
    for i in range(1, num):
        if num % i == 0:
            fprime += 1
    if fprime == 1:
        flag = True
    return flag


CONT, I = 0, 1
while CONT < 10001:
    I += 1
    if isprime(I):
        CONT += 1
print I
