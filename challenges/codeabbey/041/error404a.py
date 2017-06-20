"""This function calculate the median of three numbers."""


def media(data):
    """Calculate the median of three numbers"""
    tmp = data.split("\n")
    ltemp = []
    res = ""
    for i in range(0, int(tmp[0])):
        ltemp = tmp[i+1].split(" ")
        if int(ltemp[0]) < int(ltemp[1]):
            if int(ltemp[1]) < int(ltemp[2]):
                res = res + ltemp[1] + " "
            else:
                if int(ltemp[2]) < int(ltemp[0]):
                    res += ltemp[0] + " "
                else:
                    res += ltemp[2] + " "
        else:
            if int(ltemp[0]) < int(ltemp[2]):
                res += ltemp[0] + " "
            else:
                if int(ltemp[2]) < int(ltemp[1]):
                    res += ltemp[1] + " "
                else:
                    res += ltemp[2] + " "
    print res
