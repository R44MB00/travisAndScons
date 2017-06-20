"""This script contains the secret number (also 4 digits)."""
AMOUNT = int(raw_input())
NUMBER = []
for case in range(AMOUNT):
    NUMBER.append(raw_input().split())


def right(possition, guess, correct):
    """This def analyzes the numbers of hits if
    they are located in the chain of erroneous"""
    counter = 0
    lenght = len(guess)
    for i in range(lenght):
        if possition[i] == guess[i]:
            counter += 1
    return counter == correct


for x in range(10000):
    answer = format(x, '04d')
    count = 0
    for string in NUMBER:
        if not right(answer, string[0], int(string[1])):
            break
        count += 1
    if count == len(NUMBER):
        print answer
