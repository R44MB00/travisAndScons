"""This code finds the index of the fibonacci number whose divisible"""


FIBO = [0, 1]
for I in range(1, 10001):
    FIBO.append(FIBO[I] + FIBO[I - 1])
FIBO.remove(0)
FIBO.remove(1)
ID = int(raw_input())
SOL = ""
NUMS = raw_input().split()
for k in NUMS:
    for i in FIBO:
        if i % int(k) == 0:
            SOL += str(FIBO.index(i) + 2) + " "
            break
print SOL
