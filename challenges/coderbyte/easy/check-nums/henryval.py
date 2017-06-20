"""This is the 8th challenge in coderbyte"""


def checknums(num1, num2):
    """This function checks if num2 is greater than num1"""
    if int(num1) < int(num2) is True:
        return "true"
    else:
        if num1 == num2:
            return "-1"
        else:
            return "false"


print checknums(0, 1)
