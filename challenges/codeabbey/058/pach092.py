"""This script contains card names in form
Rank-of-Suit, separated with spaces."""
DATA = int(raw_input())
CARDS = raw_input().split()
A = 0
RANKS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack\
    ', 'Queen', 'King', 'Ace']
while A < DATA:
    RANK = int(CARDS[A]) % 13
    if int(CARDS[A]) < 13:
        SUIT = ("-of-Clubs")
    elif int(CARDS[A]) < 26:
        SUIT = ("-of-Spades")
    elif int(CARDS[A]) < 39:
        SUIT = ("-of-Diamonds")
    else:
        SUIT = ("-of-Hearts")
    print RANKS[RANK] + SUIT, ' '
    A += 1
