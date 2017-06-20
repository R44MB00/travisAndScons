"""This script  contains the same amount of results, each of them
being the count of steps for getting Collatz Sequence to 1."""
AMOUNT = input()
DATA = [int(i) for i in raw_input().split()]
ANSWER = []
for collatz in DATA:
    counter = 0
    while collatz != 1:
        if collatz % 2 == 0:
            collatz = collatz / 2
        else:
            collatz = 3 * collatz + 1
        counter += 1
    ANSWER.append(str(counter))
print ' '.join(ANSWER)
