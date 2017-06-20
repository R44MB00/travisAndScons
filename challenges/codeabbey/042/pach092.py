"""This script contains the number of points in each test-case,
not exceeding 21 - or the word Bust if the total is greater than 21"""
AMOUNT = int(input())
for DECK in range(AMOUNT):
    cards = raw_input().split()
    ADD = 0
    ace = 0
    for game in cards:
        if game == 'A':
            ace += 1
            ADD += 1
        elif game == 'T' or game == 'J' or game == 'Q' or game == 'K':
            ADD += 10
        else:
            ADD += int(game)

        while ADD <= 11 and ace > 0:
            ADD += 10
            ace -= 1

    if ADD > 21:
        print "Bust "
    else:
        print str(ADD), ' '
