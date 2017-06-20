"""This is the 9th challenge of coderbyte"""


def timeconvert(num):
    """This function converts minutes
    into hours:minutes"""
    if int(num) % 60 == int(num):
        return "0:" + str(num)
    else:
        return str(int(num) / 60) + ":" + str(int(num) % 60)


print timeconvert(raw_input())
