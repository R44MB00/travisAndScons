"""This code finds the sum of the digits of 2^1000"""


print reduce(lambda X, Y: int(X) + int(Y), str(pow(2, 1000)))
