"""This function count the how many time
apear a element in an array"""


def arraycounters(data):
    """Count occurrences of an element in an array"""
    temp = data.split("\n")
    limits = temp[0].split(" ")
    datos = temp[1].split(" ")
    counter = []
    res = ""
    index = 0
    for idx in range(0, int(limits[1])):
        idx = idx
        counter.append(0)
    for idx1 in range(0, int(limits[0])):
        index = int(datos[idx1]) - 1
        counter[index] += 1
    for idx2 in counter:
        res += str(idx2) + " "
    print res
