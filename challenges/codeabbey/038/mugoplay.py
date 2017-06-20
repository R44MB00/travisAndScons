"""Quadratic Equation """
import re
import cmath


def format_result(result):
    """Funcion para dar formato a los resultados"""

    if re.search("[+][0][j]|[-][0][j]", str(result)):
        real_pair = round(result.real)
        new_result_1 = int(real_pair)
    elif not re.search("[0-9]+[j]", str(result)):
        new_result_1 = result
    elif re.search("^[0-9]+[j]|^[-][0-9]+[j]", str(result)):
        new_result_1 = result
        counter = 0
        for char in str(new_result_1):
            counter += 1
            if "j" in char:
                new_result_1 = new_result_1[0:counter-1]+"i"
                if re.match("^[-][1-9]+[i]", new_result_1):
                    new_result_1 = "0"+new_result_1
                else:
                    new_result_1 = "0+"+new_result_1

    elif re.search("^[(].*[)]", str(result)):
        remove = len(str(result))
        new_result_1 = str(result)[1:remove-1]
        counter = 0
        for char in new_result_1:
            counter += 1
            if "j" in char:
                new_result_1 = new_result_1[0:counter-1]+"i"

    return new_result_1


def main():
    """funcion principal/entrada de datos"""

    vect = ["8 -80 848", "1 -12 61", "9 -36 -108", "6 -24 -72",
            "7 -14 455", "4 -16 416", "3 48 180", "5 -100 580",
            "5 15 -50", "2 36 164", "6 42 36", "7 -42 238",
            "7 84 259", "5 -85 350", "5 0 -500", "3 18 219"]
    counter_0 = 0
    for num in vect:

        ecuation = num.split(" ")
        num_a = int(ecuation[0])
        num_b = int(ecuation[1])
        num_c = int(ecuation[2])

        result_1 = ((-num_b)+cmath.sqrt((num_b**2)-4*num_a*num_c))/(2*num_a)
        new_result_1 = format_result(result_1)
        result_2 = ((-num_b)-cmath.sqrt((num_b**2)-4*num_a*num_c))/(2*num_a)
        new_result_2 = format_result(result_2)

        counter_0 += 1
        if counter_0 < len(vect):
            print str(new_result_1), str(new_result_2)+";"
        if counter_0 == len(vect):
            print str(new_result_1), str(new_result_2)


main()
