"""This is the 6th challenge in oderbyte"""


def lettercapitalize(strn):
    """This function returns the first letter
    of a string, capitalized"""
    sstr = ""
    strn = strn.split()
    for i in strn:
        sstr += str(i).capitalize() + " "
    return sstr


print lettercapitalize(raw_input())
