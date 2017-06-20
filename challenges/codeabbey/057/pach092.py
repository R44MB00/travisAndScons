"""This script contains the processed sequence. All
values are calculated to precision of 1e-7 or better."""
LINE = int(raw_input())
DATA = raw_input().split()
AMOUNT = len(DATA) - 1
A = 0
print DATA[0], ' '
while A < AMOUNT - 1:
    print (float(DATA[A]) + float(DATA[A + 1]) + float(DATA[A + 2])) / 3, ' '
    A += 1
print DATA[AMOUNT]
