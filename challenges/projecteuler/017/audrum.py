"""Number letter counts"""


def letters_numbers():
    """The numbers in letters"""
    units = ({"one": 3, "two": 3, "three": 5, "four": 4, "five": 4, "six": 3,
              "seven": 5, "eight": 5, "nine": 4})

    teens = ({"ten": 3, "eleven": 6, "twelve": 6, "thirteen": 8, "fourteen": 8,
              "fifteen": 7, "sixteen": 7, "seventeen": 9, "eighteen": 8,
              "nineteen": 8})

    tens = ({"twenty": 6, "thirty": 6, "forty": 5, "fifty": 5, "sixty": 5,
             "seventy": 7, "eighty": 6, "ninety": 6})

    additions(units, teens, tens)


def additions(value_units, value_teens, value_tens):
    """Calculate the addition"""
    add_1 = 0
    add_2 = 0
    add_3 = 0
    thousand = 11
    for number in value_units:
        add_1 += value_units[number]
    for number in value_teens:
        add_2 += value_teens[number]
    for number in value_tens:
        add_3 += value_tens[number]

    two_digits = add_1 + add_2 + (10 * add_3 + 8 * add_1)
    hundreds = add_1 * 100 + two_digits * 9 + 7 * 9 + 10 * 9 * 99
    print two_digits + hundreds + thousand


letters_numbers()
