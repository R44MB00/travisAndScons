"""This script contains a pair of roots for each case.
it's using space to separate values of the pair and
use semicolon followed by space to separate pairs
themselves. Complex numbers are given like 5-2i or -1+1i."""
from math import sqrt
AMOUNT = input()
ANSWER = []
for x in range(AMOUNT):
    data = raw_input().split()
    A, B, C = int(data[0]), int(data[1]), int(data[2])
    sqrt_result = B ** 2 - 4 * A * C
    if sqrt_result >= 0:
        x1 = int((-B + sqrt(sqrt_result)) / (2 * A))
        x2 = int((-B - sqrt(sqrt_result)) / (2 * A))
        ANSWER.append("%s %s" % (x1, x2))
    else:
        x1 = -B / (2 * A)
        x2 = int(sqrt(-sqrt_result) / (2 * A))
        ANSWER.append("{0}+{1}i {0}-{1}i".format(x1, x2))
print "; ".join(ANSWER)
