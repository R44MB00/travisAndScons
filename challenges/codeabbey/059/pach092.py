"""This script contains hints for these guesses, they
are given in format X-Y and separated with spaces."""
DATA = raw_input()
NUMBERS = raw_input()
ALICE = int(DATA.split(' ')[0])
AMOUNT = int(DATA.split(' ')[1])
BARBARA = list(map(int, NUMBERS.split(' ')))
A = 0
ANSWER = []
while A < AMOUNT:
    GUESS = str(BARBARA[A]).rjust(4, '0')
    GIVEN_NUMBER = str(ALICE).rjust(4, '0')
    DIGIT_PRESENT, DIGIT_MATCH = 0, 0
    for j in range(0, 4):
        if GUESS[j] == GIVEN_NUMBER[j]:
            DIGIT_MATCH += 1
        elif GUESS[j] in GIVEN_NUMBER:
            DIGIT_PRESENT += 1
    ANSWER.append('{}-{}'.format(DIGIT_MATCH, DIGIT_PRESENT))
    A += 1
print ' '.join(ANSWER)
