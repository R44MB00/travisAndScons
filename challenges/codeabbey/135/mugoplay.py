"""Variable Lenght Code"""
BINARY_DIC = ({
    ' ': "11", 'e': "101",
    't': "1001", 'o': "10001",
    'n': "10000", 'a': "011",
    's': "0101", 'i': "01001",
    'r': "01000", 'h': "0011",
    'd': "00101", 'l': "001001",
    '!': "001000", 'u': "00011",
    'c': "000101", 'f': "000100",
    'm': "000011", 'p': "0000101",
    'g': "0000100", 'w': "0000011",
    'b': "0000010", 'y': "0000001",
    'v': "00000001", 'j': "000000001",
    'k': "0000000001", 'x': "00000000001",
    'q': "000000000001", 'z': "000000000000"
})


def encoding_bits(string):
    """Traduciendo a diccionario"""
    bit_string = ""
    for char in string:
        bit_string += str(BINARY_DIC[char])

    bit_counter = 0
    bit_len = len(bit_string)
    bit_vector_en = []

    while bit_counter < bit_len:
        bit_group = bit_string[bit_counter:bit_counter+8]
        if len(bit_group) < 8:
            padding = 8 - len(bit_group)
            bit_group += "0"*padding

        bit_vector_en.append(bit_group)
        bit_counter += 8
    return bit_vector_en


def encoding_hex(bit_vector):
    """codificando en hexadecimal"""
    encoded_vector = []
    for bit in bit_vector:
        dec_encode = int(bit, 2)
        hex_encode = format(dec_encode, "02x")
        encoded_vector.append(hex_encode)
    return encoded_vector


def main():
    """Procesando datos de entrada"""
    with open("DATA.txt") as in_file:
        for str_ln in in_file.readlines():
            input_string = str_ln
    bit_vector = encoding_bits(input_string)
    hex_vector = encoding_hex(bit_vector)

    for hex_c in hex_vector:
        hex_char = str(hex_c)
        print hex_char.upper()


main()
