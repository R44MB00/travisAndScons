"""This function generates a random numbers and return
the number of iterations for sequences with such initial
values to come to the loop."""


def randomgenerator(data):
    """Generate random numbers"""
    temp = data.split("\n")
    numsec = 0
    sec = []
    cont = 1
    res = ""
    seeds = temp[1].split(" ")
    loopflg = True
    for i in range(0, int(temp[0])):
        cont = 1
        loopflg = True
        numsec = int(seeds[i])
        sec.append(numsec)
        while loopflg:
            numsec = int(str(pow(numsec, 2)).zfill(8)[2:6])
            if numsec in sec:
                loopflg = False
            else:
                sec.append(numsec)
                cont += 1
        res += str(cont) + " "
        sec = []
    print res
