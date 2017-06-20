"""TEST - Life, the Universe, and Everything"""


def verify_number(numbers):
    """Stop after read the number 42"""
    for i in numbers:
        if i != 42:
            print i
        else:
            exit()


def read_number():
    """Read the number"""
    result = []
    while True:
        number = int(input(""))
        if number != 42:
            result.append(number)
        else:
            break
    verify_number(result)


read_number()
