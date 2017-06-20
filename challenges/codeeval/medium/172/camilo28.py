"""
Title: Card number Validation
url: https://www.codeeval.com/open_challenges/172/
"""

def card_valiation(file):
    """
    This fuction compute whether a bank card number is valid or not,used "Luhn algorith"
    File: rute for the testcase
    return: 1 whether is card valid and 0 when not
    """
    for line in file:
        sum = 0
        num = line.rstrip("\n").replace(" ","")
        con = len(num) -1
        if not len(num) % 2 == 0:
            num = "0" + num
            sum += int(num[len(num) - 1])
        while con >= 0:
            if con % 2 == 0:
                sum += validate(num[con])
            else:
                sum += int(num[con])
            con -= 1
        if sum % 10 == 0:
            print 1
        else:
            print 0

def validate(num):
    """
    this is a auxiliar function, compute the sum for the digits
    """
    result = int(num) * 2
    #when the nums is major a nine, the sum is the sum of the digits
    if result > 9:
        aux = str(result)
        result = int(aux[0]) + int(aux[1])
    else:
        result = result
    return result

path = raw_input("Please enter the rute to the file: ")
file = open(path)
card_valiation(file)
