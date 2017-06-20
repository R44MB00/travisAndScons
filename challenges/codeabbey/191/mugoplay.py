""" Spaceship Weight Fraud """
DIC_B16 = ({0: "0", 1: "1", 2: "2", 3: "3", 4: "4", 5: "5", 6: "6", 7: "7",
            8: "8", 9: "9", 10: "A", 11: "B", 12: "C", 13: "D", 14: "E",
            15: "F"})


def search_min(hex_string, dic_init):
    """Buscando el minimo valor"""
    dic_count = dic_init
    while dic_count < 15:
        min_char = DIC_B16[dic_count]
        len_hex_string = len(hex_string)-1
        while len_hex_string >= 0:
            c_string = hex_string[len_hex_string]

            if min_char == c_string:
                min_value = min_char
                min_position = len_hex_string
                return min_value, min_position

            len_hex_string -= 1
        dic_count += 1


def search_max(hex_string):
    """Buscando el maximo valor"""
    dic_count = 15

    while dic_count >= 0:
        max_char = DIC_B16[dic_count]
        len_hex_string = len(hex_string)-1
        while len_hex_string >= 0:
            c_string = hex_string[len_hex_string]
            if max_char == c_string:
                max_value = max_char
                max_position = len_hex_string
                return max_value, max_position

            len_hex_string -= 1
        dic_count -= 1


def get_min(hex_string):
    """Reemplazando el minimo valor"""
    string_vector = [l for l in hex_string]

    min_init_data_one = search_min(hex_string, 1)
    min_init_data_two = search_min(hex_string, 0)

    len_string_min = len(string_vector)
    while_counter = 0
    string_counter = 0

    while while_counter < len_string_min:

        if while_counter == 0:
            min_init_data = min_init_data_one
        else:
            min_init_data = min_init_data_two

        if min_init_data[0] == string_vector[while_counter]:
            string_counter += 1
        else:
            stored_value = string_vector[string_counter]
            string_vector[min_init_data[1]] = stored_value
            string_vector[string_counter] = min_init_data[0]
            break
        while_counter += 1

    last_min_string = ""
    for str_line in string_vector:
        last_min_string += str_line

    print last_min_string


def get_max(hex_string):
    """Buscando el maximo valor"""
    string_vector = [l for l in hex_string]
    init_data = search_max(hex_string)
    string_counter = 0
    init_data_int = int(init_data[0], 16)

    for char in string_vector:
        char_int = int(char, 16)
        if init_data[0] == char or char_int > init_data_int:
            string_counter += 1
        else:
            stored_value = string_vector[string_counter]
            string_vector[init_data[1]] = stored_value
            string_vector[string_counter] = init_data[0]
            break

    last_max_string = ""
    for str_v in string_vector:
        last_max_string += str_v

    print last_max_string


def main():
    """Procesando datos de entrada"""
    input_string = []
    with open("DATA.txt", "rb") as in_file:
        for hex_str in in_file.readlines():
            hex_str = hex_str.strip()
            input_string.append(hex_str)

    for line in input_string:
        get_min(line)
        get_max(line)


main()
