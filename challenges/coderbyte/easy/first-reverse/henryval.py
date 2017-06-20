"""This code returns a string backwards"""


def firstreverse(strn):
    """This function returns a string backwards"""
    for i, item in enumerate(strn):
        if i == 0:
            sol = strn[len(strn) - i - 1]
        else:
            sol += strn[len(strn) - i - 1]
        i = strn.find(item)
    return sol


print firstreverse(raw_input())
