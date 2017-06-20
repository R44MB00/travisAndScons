"""This script contains prime numbers corresponding
the specified positions of the array."""
AMOUNT = int(input())
POSITION = list(map(int, raw_input().split()))
PRIME = [2]
for i in range(3, 3000000, 2):
    if i > 10 and i % 10 == 5:
        continue
    for j in PRIME:
        if j * j - 1 > i:
            PRIME.append(i)
            break
        if i % j == 0:
            break
    else:
        PRIME.append(i)
for i in POSITION:
    print PRIME[i - 1], ' '
