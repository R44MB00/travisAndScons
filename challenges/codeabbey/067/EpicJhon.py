from math import *

# 67 - Fibonacci Sequence

len = int(input())

for x in range(1, len + 1):
    F = float(input())
    golden = (1 + 5 ** 0.5) / 2
    n = ceil(log(F * sqrt(5) + 0.5, golden))
    if n < 0:
        n = 0
    print(n, end=' ')
