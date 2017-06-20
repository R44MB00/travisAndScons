"""This script contains the number of the move at which
game is won by one of players (starting from 1) or 0 if
the game is drawn (no winner) after the last move."""
DATA = []
ANSWER = []
OK = ['123', '456', '789', '147', '258', '369', '159', '357']
for prueba in range(int(input())):
    DATA.append([str(x) for x in raw_input().split()])
for game in DATA:
    string = []
    xx = []
    xo = []
    for result in game:
        if game.index(result) % 2 == 0:
            xx.append(result)
            for w in OK:
                i = 0
                for x in xx:
                    if x in w:
                        i += 1
                        if i == 3:
                            string.append(game.index(result)+1)
        else:
            xo.append(result)
            for w in OK:
                i = 0
                for o in xo:
                    if o in w:
                        i += 1
                        if i == 3:
                            string.append(game  .index(result)+1)
    if string == []:
        string = [0]
    ANSWER.append(str(string[0]))
print ' '.join(ANSWER)
