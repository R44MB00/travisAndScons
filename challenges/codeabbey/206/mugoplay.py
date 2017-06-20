"""Base32 encoder/decoder"""
import binascii
import re

NORM_DIC = ({
    0: "A", 1: "B", 2: "C", 3: "D", 4: "E", 5: "F",
    6: "G", 7: "H", 8: "I", 9: "J", 10: "K", 11: "L",
    12: "M", 13: "N", 14: "O", 15: "P", 16: "Q", 17: "R",
    18: "S", 19: "T", 20: "U", 21: "V", 22: "W",
    23: "X", 24: "Y", 25: "Z", 26: "2", 27: "3",
    28: "4", 29: "5", 30: "6", 31: "7"
})

REV_DIC = ({
    "A": 0, "B": 1, "C": 2, "D": 3, "E": 4, "F": 5,
    "G": 6, "H": 7, "I": 8, "J": 9, "K": 10, "L": 11,
    "M": 12, "N": 13, "O": 14, "P": 15, "Q": 16,
    "R": 17, "S": 18, "T": 19, "U": 20, "V": 21,
    "W": 22, "X": 23, "Y": 24, "Z": 25, "2": 26,
    "3": 27, "4": 28, "5": 29, "6": 30, "7": 31
})


def padding(string):
    """Relleno para completar multiplo de 5"""
    padding_str = 1
    proc_string = string
    while True:
        proc_string += str(padding_str)*padding_str
        if len(proc_string) % 5 == 0:
            break
        else:
            proc_string = string
            padding_str += 1

    return proc_string


def to_bin(proc_string):
    """Conversion de ascii a binario"""
    bin5_vector = []
    b32_string = ""

    for char in proc_string:
        bin_stream = format(ord(char), "08b")
        b32_string += bin_stream

    counter = 0
    binary_len = len(b32_string)

    while binary_len > 0:
        bin5_vector.append(b32_string[counter:counter+5])
        counter += 5
        if binary_len == 0:
            break
        binary_len -= 5

    return bin5_vector


def encoding(binary_vector_five):
    """codificacion de lineas"""
    encoded_string = ""
    for coding in binary_vector_five:
        code_num = int(coding, 2)
        encoded_string += NORM_DIC[code_num]
    return encoded_string


def decoding(encoded_binary):
    """decodificacion de lineas"""
    decoded_nums = ""
    for char in encoded_binary:
        decoded_nums += (format(REV_DIC[char], "05b"))
    len_dec = len(decoded_nums)
    count_dec = 0
    vector_dec = []

    while len_dec > 0:
        vector_dec.append(decoded_nums[count_dec:count_dec+8])
        count_dec += 8
        len_dec -= 8

    string_dec = ""
    for binary in vector_dec:
        char_dec = int(binary, 2)
        string_dec += str(binascii.unhexlify("%x" % char_dec))

    len_string_dec = len(string_dec)
    final_string = string_dec

    while True:
        unpadding = re.search("[0-9]+", final_string)
        if unpadding:
            len_string_dec -= 1
            final_string = final_string[0:len_string_dec]

        else:
            break

    return final_string


def encoding_first(first_string):
    """Procesamiento datos de entrada"""
    string_padding = padding(first_string)
    returned_binary = to_bin(string_padding)
    encoded_string = encoding(returned_binary)

    return encoded_string


def main():
    """extraccion de datos"""
    with open("DATA.txt", "rb") as in_file:
        for in_str in in_file.readlines():
            in_str = in_str.strip()
            if in_str == in_str.lower():
                encode_str = encoding_first(in_str)
                print encode_str
            else:
                decode_str = decoding(in_str)
                print decode_str


main()
