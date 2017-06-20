"""This function find the greatest common divisor
and Least Common Multiple"""


def gcd(data):
    """Find the gcd and lcm"""
    temp = data.split("\n")
    ltmp = []
    lcm = 0
    res = ""
    for i in range(0, int(temp[0])):
        ltmp = temp[i+1].split(" ")
        if int(ltmp[0]) > int(ltmp[1]):
            vara = int(ltmp[0])
            varb = int(ltmp[1])
        else:
            vara = int(ltmp[1])
            varb = int(ltmp[0])
        while varb != 0:
            tmp = varb
            varb = vara % varb
            vara = tmp
        lcm = (int(ltmp[0]) * int(ltmp[1])) // vara
        res += "(" + str(vara) + " " + str(lcm) + ") "
    print res
