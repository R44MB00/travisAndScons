"""This is the 5th problem in the easy category in coderbyte"""


def simpleadding(num):
    """This function returns a cumulative sum from 1 to num"""
    return reduce(lambda x, y: x + y, range(int(num) + 1))


print simpleadding(raw_input())
