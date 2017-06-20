"""This code returns a numbers factorial"""


def firstfactorial(num):
    """This function returns a numbers factorial"""
    return reduce(lambda x, y: x*y, range(1, num + 1))


print firstfactorial(8)
