"""This function calculate the
aproximate square root"""


def squareroot(data):
    """Calculate square root"""
    temp = data.split("\n")
    res = ""
    rot = 1
    cases = []
    for idx in range(0, int(temp[0])):
        cases = temp[idx+1].split(" ")
        rot = 1
        for xit in range(0, int(cases[1])):
            xit = xit
            rot = (rot + (int(cases[0]) / rot)) / 2
        res += str(round(rot, 7)) + " "
    print res
