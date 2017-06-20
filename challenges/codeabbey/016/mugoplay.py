"""Average of Array"""


def main():
    """Average of Array"""
    string = ""

    with open("list.txt", "rb") as in_file:
        for line in in_file.readlines():
            string += line

    string_vector = string.split(" 0 ")
    matrix = []

    for num in string_vector:
        vector = num.split(" ")
        matrix.append(vector)

    for vec in matrix:
        accum = 0
        for val in vec:
            len_v = len(vec)
            accum += float(val)
        prom = round(accum/len_v)
        print int(prom)


main()
