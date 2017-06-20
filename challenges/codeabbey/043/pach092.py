"""This script contains numbers from 1 to 6 for each
of input values, produced by the discussed algorithm."""
AMOUNT = int(raw_input())
for i in range(AMOUNT):
    DATA = float(raw_input())
    dice = int(DATA * 6 + 1)
    print dice, ' '
