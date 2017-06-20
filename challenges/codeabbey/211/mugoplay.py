"""Information Entropy / Compression"""
import math


def calc_factor(word):
    """Calculo factorial"""
    word_vector = [l for l in word]
    vector_counter = []
    equal_sensor_vector = []
    for crs in word:
        counter = 0
        for strs in word_vector:
            if crs == strs:
                counter += 1
        if counter > 1 and crs not in equal_sensor_vector:
            vector_counter.append(counter)
        elif counter == 1:
            vector_counter.append(counter)
        equal_sensor_vector.append(crs)

    return vector_counter


def compression(sum_factors, string):
    """Compresion de cadenas"""
    string_len = len(string)
    char_freq = 1.0/string_len
    h_result = 0
    for nums in sum_factors:
        p_c = nums*char_freq
        log_p_c = -1*(math.log(p_c)/math.log(2))
        h_result += log_p_c*p_c
    print h_result


def main():
    """procesamiento inicial de datos"""
    string_vector = []
    with open("DATA.txt", "rb") as in_file:
        for char in in_file.readlines():
            char = char.strip()
            string_vector.append(char)

    for strings in string_vector:
        sum_factors = calc_factor(strings)
        compression(sum_factors, strings)


main()
