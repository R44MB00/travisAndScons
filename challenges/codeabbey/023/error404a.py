"""This function sort an array and return
the number of performed swaps and checksum
of the array"""


def bubbleinarray(data):
    """Perform the sort"""
    temp = data.split(" ")
    temp.pop(len(temp)-1)
    contswap = 0
    arrayhash = 0
    for i in range(0, (len(temp)-1)):
        if int(temp[i+1]) < int(temp[i]):
            contswap += 1
            tmp = temp[i]
            temp[i] = temp[i+1]
            temp[i+1] = tmp
    for num in temp:
        arrayhash = ((arrayhash+int(num))*113) % 10000007
    print str(contswap) + " " + str(arrayhash)
