"""This script should have one of the letters R (right), A (acute) or O
(obtuse) for each of triangles. Letters should be separated by spaces"""
AMOUNT = int(raw_input())
while AMOUNT > 0:
    EDGE = raw_input().split(' ')
    A = float(EDGE[0])
    B = float(EDGE[1])
    C = float(EDGE[2])
    SQUARE = A * A + B * B
    MULT = C * C
    if SQUARE > MULT:
        print "A "
    elif SQUARE == MULT:
        print "R "
    else:
        print "O "
    AMOUNT = AMOUNT - 1
