"""This script contains number of iterations for
sequences with such initial values to come to the loop."""
AMOUNT = int(input())
DATA = map(int, raw_input().split())
ANSWER = ''
for number in DATA:
    loop = []
    iterations = 0
    while number not in loop:
        loop.append(number)
        number = ((number ** 2) / 100) % 10000
        iterations += 1
    ANSWER += str(iterations) + ' '
print ANSWER
