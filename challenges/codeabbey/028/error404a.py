"""This function calculate the body mass index."""


def fbmi(data):
    """Calculate the bmi."""
    temp = data.split("\n")
    res = ""
    ltmp = []
    bmi = 0
    for i in range(0, int(temp[0])):
        ltmp = temp[i+1].split(" ")
        bmi = float(ltmp[0]) / pow(float(ltmp[1]), 2)
        if bmi < 18.5:
            res += "under "
        elif bmi >= 18.5 and bmi < 25.0:
            res += "normal "
        elif bmi >= 25.0 and bmi < 30.0:
            res += "over "
        else:
            res += "obese "
    print res
