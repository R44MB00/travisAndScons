"""This is the challenge number 29 of project euler"""


NUMLIST = []
for A in range(2, 101):
    for B in range(2, 101):
        VAL = pow(A, B)
        try:
            NUMLIST.index(VAL)
        except ValueError:
            NUMLIST.append(VAL)
print len(NUMLIST)
