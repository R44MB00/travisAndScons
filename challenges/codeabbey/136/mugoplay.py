"""Variable Length Code Unpack"""
import re

BINARY_ARRAY = ([
    "11", "101", "1001", "10001", "10000",
    "011", "0101", "01001", "01000", "0011",
    "00101", "001001", "001000", "00011",
    "000101", "000100", "000011", "0000101",
    "0000100", "0000011", "0000010", "0000001",
    "00000001", "000000001", "0000000001",
    "00000000001", "000000000001", "000000000000"
])
BINARY_DIC = ({
    "11": ' ', "101": 'e',
    "1001": 't', "10001": 'o',
    "10000": 'n', "011": 'a',
    "0101": 's', "01001": 'i',
    "01000": 'r', "0011": 'h',
    "00101": 'd', "001001": 'l',
    "001000": '!', "00011": 'u',
    "000101": 'c', "000100": 'f',
    "000011": 'm', "0000101": 'p',
    "0000100": 'g', "0000011": 'w',
    "0000010": 'b', "0000001": 'y',
    "00000001": 'v', "000000001": 'j',
    "0000000001": 'k', "00000000001": 'x',
    "000000000001": 'q', "000000000000": 'z'
})
B32_DIC = ({
    "A": "01010", "B": "01011",
    "C": "01100", "D": "01101",
    "E": "01110", "F": "01111",
    "G": "10000", "H": "10001",
    "I": "10010", "J": "10011",
    "K": "10100", "L": "10101",
    "M": "10110", "N": "10111",
    "O": "11000", "P": "11001",
    "Q": "11010", "R": "11011",
    "S": "11100", "T": "11101",
    "U": "11110", "V": "11111"
})


def decode_b32(string):
    """base 32 decode func"""
    bin_string = ""
    for char in string:
        if re.match("[0-9]", char):
            char = format(int(char), "05b")
            bin_string += char
        else:
            char = B32_DIC[char]
            bin_string += char

    return bin_string


def bin_search(bin_string):
    """Busqueda de bits coincidentes"""
    len_bin = len(bin_string)
    counter = 0
    new_bin_array_2 = []
    stored_bits = ""

    while counter < len_bin:
        stored_bits += bin_string[counter]
        for pair in BINARY_ARRAY:
            if re.match(pair, stored_bits):
                new_bin_array_2.append(stored_bits)
                stored_bits = ""
                break
        counter += 1

    return new_bin_array_2


def decode_search(new_bin_array_1):
    """Decodificacion inicial del string"""
    decoded_string = ""
    for nbin in new_bin_array_1:
        decoded_string += BINARY_DIC[nbin]
    print decoded_string


def main():
    """Procesamiento datos de entrada"""
    with open("DATA.txt", "rb") as in_file:
        for in_line in in_file.readlines():
            input_string = in_line
    string_packed = decode_b32(input_string)
    new_bin_array = bin_search(string_packed)
    decode_search(new_bin_array)


main()
