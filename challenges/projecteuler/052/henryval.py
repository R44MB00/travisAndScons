"""This code finds the smallest positive integer,
x, such that 2x, 3x, 4x, 5x, and 6x, that contains the same digits"""


def checks(numa, numb):
    """This function return False if two strings
    have differents numbers, True if have same"""
    flag = len(str(numa)) == len(str(numb))
    for i, item in enumerate(str(numa)):
        print i
        if str(numb).find(item) < 0:
            flag = False
    return flag


MYF = False
NUM = 0
while not MYF:
    NUM += 1
    MYF = checks(NUM, 2*NUM) and checks(NUM, 3*NUM) and checks(NUM, 4*NUM)
    MYF = MYF and checks(NUM, 5*NUM) and checks(NUM, 6*NUM)
print NUM
