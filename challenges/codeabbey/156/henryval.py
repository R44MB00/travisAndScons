"""This code fix 16 char string number cards"""


def findres(ins):
    """This function finds the total sum of a number card string"""
    res = 0
    outs = ""
    for i, item in enumerate(ins):
        outs += ins[len(ins) - i - 1]
    for i, item in enumerate(ins):
        if i % 2 == 0:
            res += int(item)
        else:
            res += int(item) * 2
            if int(item) * 2 > 9:
                res -= 9
    return res


N = int(raw_input())
TOTALRES = ""
for I in range(N):
    FL = False
    STRN = raw_input()
    if STRN.find("?") != -1:
        SINV, NS = "", ""
        RES = -1
        for I, ITEM in enumerate(STRN):
            SINV += STRN[len(STRN) - I - 1]
        F = 0
        while RES % 10 != 0:
            RES = 0
            SIV = SINV.replace("?", str(F))
            for I, ITEM in enumerate(SIV):
                if I % 2 != 0:
                    RES += int(ITEM) * 2
                    if int(ITEM) * 2 > 9:
                        RES -= 9
                else:
                    RES += int(ITEM)
            F += 1
        for I, ITEM in enumerate(SIV):
            NS += SIV[len(SIV) - I - 1]
        TOTALRES += NS + " "
    else:
        for I, ITEM in enumerate(STRN):
            SS = list(STRN)
            if I != len(SS) - 1:
                TMP = SS[I]
                SS[I] = SS[I+1]
                SS[I+1] = TMP
                NEWSS = "".join(SS)
                var = findres(NEWSS)
                if var % 10 == 0:
                    TOTALRES += NEWSS + " "
                    break
print TOTALRES
