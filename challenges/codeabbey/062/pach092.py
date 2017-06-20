"""This script contains the quantity of
primes in the ranges specified by these pairs."""
NUMBERS = input()
ANSWER = ""
for i in range(0, int(NUMBERS)):
    VALUES = raw_input().split()
    a, b = int(VALUES[0]), int(VALUES[1])
    count = 0
    cur = int(a)
    while cur < int(b) + 1:
        PRIME = False
        if PRIME is False:
            cur += 1
            PRIME = True
            for i in range(2, int(cur ** 0.5) + 1):
                if cur % i == 0:
                    PRIME = False
            if cur == 2:
                PRIME = True
            if cur == 1:
                PRIME = False
        count += 1
    ANSWER += str(count) + " "
print ANSWER
