"""should for each of matches specify whether first player wins
(by value 1) or second (by value 2). There would be no draws."""
AMOUNT = input()
for i in range(int(AMOUNT)):
    DATA = raw_input().split()
    game_1, game_2 = 0, 0
    for j in DATA:
        if j in ('RS', 'SP', 'PR'):
            game_1 += 1
        if j in ('SR', 'PS', 'RP'):
            game_2 += 1
    if game_1 > game_2:
        print '1 '
    else:
        print '2 '
