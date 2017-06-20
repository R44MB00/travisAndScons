"""This function sort an array and return
how many swaps and itrerations it was needed"""


def bubblesort(data):
    """Sort an array in non-decreasing order."""
    temp = data.split("\n")
    repets = int(temp[0])
    temp = temp[1].split(" ")
    disorderflg = True
    swapflg = False
    contswap = 0
    contpasses = 0
    while disorderflg:
        swapflg = False
        for i in range(0, (repets-1)):
            if int(temp[i+1]) < int(temp[i]):
                swapflg = True
                contswap += 1
                tmp = temp[i]
                temp[i] = temp[i+1]
                temp[i+1] = tmp
        contpasses += 1
        if not swapflg:
            disorderflg = False
    print str(contpasses) + " " + str(contswap)
