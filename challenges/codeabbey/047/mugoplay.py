"""Caesar Shift Cipher """
CAESAR_DIC_1 = ({
    1: "A", 2: "B", 3: "C",
    4: "D", 5: "E", 6: "F",
    7: "G", 8: "H", 9: "I",
    10: "J", 11: "K", 12: "L",
    13: "M", 14: "N", 15: "O",
    16: "P", 17: "Q", 18: "R",
    19: "S", 20: "T", 21: "U",
    22: "V", 23: "W", 24: "X",
    25: "Y", 26: "Z"
})

CAESAR_DIC_REV_1 = ({
    "A": 1, "B": 2, "C": 3,
    "D": 4, "E": 5, "F": 6,
    "G": 7, "H": 8, "I": 9,
    "J": 10, "K": 11, "L": 12,
    "M": 13, "N": 14, "O": 15,
    "P": 16, "Q": 17, "R": 18,
    "S": 19, "T": 20, "U": 21,
    "V": 22, "W": 23, "X": 24,
    "Y": 25, "Z": 26
})


def decrypt(string_1, n_factor_1):
    """Desencriptando las cadenas"""
    num_string_1 = ""
    for str_chr_1 in string_1:
        reverse_1 = 0
        if str_chr_1 == " ":
            num_string_1 += str_chr_1
        else:
            reverse_1 = CAESAR_DIC_REV_1[str_chr_1]-n_factor_1
            if reverse_1 > 0:
                num_string_1 += CAESAR_DIC_1[reverse_1]
            else:
                reverse_1 = 26+reverse_1
                num_string_1 += CAESAR_DIC_1[reverse_1]
    print num_string_1+". "


def main():
    """Procesando datos de entrada"""
    n_factor = int(input("Factor: "))
    with open("DATA.txt", "rb") as in_file:
        for in_lines in in_file.readlines():
            in_lines = in_lines.split(".")
            decrypt(in_lines[0], n_factor)


main()
