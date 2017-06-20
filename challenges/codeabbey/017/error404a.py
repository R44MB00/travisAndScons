"""This function calculate the hash
of an array"""


def arraychecksum(data):
    """Calculate the hash"""
    temp = data.split("\n")
    res = 0
    for num in temp[1].split(" "):
        res = ((res + int(num))*113) % 10000007
    print res
