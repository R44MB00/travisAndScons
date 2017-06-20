"""This script contains the number of person who will
remain at the end. Initial numbering starts from 1."""
DATA = raw_input().split(' ')
N, K = int(DATA[0]), int(DATA[1])
ANSWER = 0
i = 1
while i <= N:
    ANSWER = (ANSWER + K) % i
    i += 1
print ANSWER + 1
