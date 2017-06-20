"""This function calculate the index of foibonacci number."""

import math


def indexfib(data):
    """Calculate the index of foibonacci number."""
    tmp = data.split("\n")
    phi = (1 + math.sqrt(5)) / 2
    res = ""
    for k in range(0, int(tmp[0])):
        i = math.log(((int(tmp[k+1]) * math.sqrt(5)) + (1/2))) / math.log(phi)
        if i < 0:
            i = 0
            res = res + str(round((i))) + " "
    print res
