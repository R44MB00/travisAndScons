"""This script contains cards from shuffled array, separated with spaces."""
DATA = raw_input().split()
DECK = []
INDEX = []
AMOUNT = len(DATA) - 1
for pale in "CDHS":
    for NUMBER in range(1, 14):
        if NUMBER == 1:
            NUMBER = 'A'
        elif NUMBER in range(10, 14):
            NUMBER = "TJQK"[NUMBER - 10]
        else:
            NUMBER = str(NUMBER)
        DECK.append(pale + NUMBER)
A = 0
while A <= AMOUNT:
    ANS = int(DATA[A]) % 52
    INDEX.append(ANS)
    A += 1
for i in range(52):
    DECK[INDEX[i]], DECK[i] = DECK[i], DECK[INDEX[i]]
ANSWER = ""
for i in range(52):
    ANSWER += DECK[i]
    if i + 1 < 52:
        ANSWER += ' '
print ANSWER
