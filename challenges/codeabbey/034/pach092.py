'''This script contains solutions values of x which satisfy equation with
given coefficents'''
import math
DATA = int(raw_input())
ANSWER = []
for i in range(0, DATA):
    d = [float(x) for x in raw_input().split(" ")]
    mini = 0.0
    maxi = 100.0
    while (maxi - mini) > pow(10, -7):
        x = (maxi + mini)/2
        r = d[0] * x + d[1] * pow(x, 1.5) - d[2] * math.exp(-x / 50.0) - d[3]
        if r < 0:
            mini = x
        if r > 0:
            maxi = x
        if r == 0:
            break
    ANSWER.append(str(x))
print ' '.join(ANSWER)
