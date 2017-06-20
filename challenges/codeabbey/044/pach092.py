"""This script contains the sum of each throw of the
pair of dice, values should be separated with spaces."""
AMOUNT = int(input())
for i in range(AMOUNT):
    numeros = raw_input().split()
    dice_1, dice_2 = int(numeros[0]), int(numeros[1])
    ANSWER = dice_1 % 6 + dice_2 % 6 + 2
    print ANSWER, ' '
