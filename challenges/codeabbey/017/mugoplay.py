"""Array Checksum"""


def main():
    """Array Checksum"""
    string_vector = ""
    with open("list.txt", "rb") as in_file:
        for lines in in_file.readlines():
            lines = lines.strip()
            string_vector += lines

    elements_vector = string_vector.split(" ")
    result = 0
    for num in elements_vector:
        result += int(num)
        result = result*113
        result = result % 10000007
    print result


main()
