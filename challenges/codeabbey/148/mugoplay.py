"""Public Key Cryptography Intro"""
INPUT_DATA = [1000121, 954997, 42583]


def decode_string(message):
    """decode string func"""
    dictionary = ({
        0: "A", 1: "B", 2: "C", 3: "D", 4: "E",
        5: "F", 6: "G", 7: "H", 8: "I", 9: "J",
        10: "K", 11: "L", 12: "M", 13: "N", 14: "O",
        15: "P", 16: "Q", 17: "R", 18: "S", 19: "T",
        20: "U", 21: "V", 22: "W", 23: "X",
        24: "Y", 25: "Z"
    })

    letter_1 = int(message/(31**3))
    letter_2 = int((message - ((letter_1)*((31)**3)))/(31**2))
    letter_3 = int(
        (message - ((letter_2)*((31)**2))-((letter_1)*((31)**3)))/(31))
    letter_4 = int(
        message - ((letter_2)*((31)**2))-((letter_1)*((31)**3))
        - (letter_3*31))

    decrypted_msg = (
        dictionary[letter_1]+dictionary[letter_2] +
        dictionary[letter_3]+dictionary[letter_4])
    print decrypted_msg.lower()


def modulus_calculation(bin_ex, fst_modulus):
    """calculo del modulo/descomposicion binaria"""
    counter = 1
    len_bin = len(bin_ex)

    while counter < len_bin:
        if bin_ex[counter] == "1":
            fst_modulus = (
                (fst_modulus**2)*(int(INPUT_DATA[1]))) % int(INPUT_DATA[0])
        else:
            fst_modulus = ((fst_modulus)**2) % int(INPUT_DATA[0])
        counter += 1

    return fst_modulus


def find_pkey(input_data):
    """Encontrando la llave privada/Fuerza bruta"""
    for private_key in range(input_data[0]):

        bin_ex = format(private_key, "b")
        fst_modulus = ((1**2)*(int(input_data[1]))) % int(input_data[0])
        modulus_result = modulus_calculation(bin_ex, fst_modulus)

        if modulus_result == input_data[2]:
            return private_key


def modulus_normal_calc(bin_ex, fst_modulus, anum, mod):
    """Calculo normal del modulo"""
    counter = 1
    len_bin = len(bin_ex)

    while counter < len_bin:
        if bin_ex[counter] == "1":
            fst_modulus = ((fst_modulus**2)*(anum)) % mod
        else:
            fst_modulus = ((fst_modulus)**2) % mod
        counter += 1

    return fst_modulus


def init_mod(mod, anum, bnum):
    """datos de entrada/calculo normal de modulo"""
    bin_ex = format(bnum, "b")
    fst_modulus = ((1**2)*(anum)) % mod
    normal_modulus_result = modulus_normal_calc(bin_ex, fst_modulus, anum, mod)
    return normal_modulus_result


def main():
    """Entrada/procesamiento de datos iniciales"""
    private_key = find_pkey(INPUT_DATA)
    decrypt_ex = INPUT_DATA[0]-1-private_key

    with open("DATA.txt", "r") as encrypted_file:
        for encr in encrypted_file.readlines():
            encr = encr.strip()
            encrypted_vector = encr.split(" ")
            pk_gen = int(encrypted_vector[0])
            msg = int(encrypted_vector[1])

            first_a = init_mod(INPUT_DATA[0], pk_gen, decrypt_ex)
            first_b = msg % INPUT_DATA[0]
            decrypt = (first_a*first_b) % INPUT_DATA[0]
            decode_string(decrypt)


main()
