"""This is the 7th challenge in coderbyte"""


def simplesymbols(strn):
    """This function checks if a letter in a string
    is in between two '+' symbols"""
    abcd = "abcdefghijklmnopqrstuvwxyz"
    flag = "true"
    for i, item in enumerate(strn):
        if abcd.find(item) >= 0:
            if i == 0:
                print i, item
                flag = "false"
            else:
                if strn[i+1] != "+" or strn[i-1] != "+":
                    flag = "false"
    return flag


print simplesymbols(raw_input())
