"""Write numbers in text"""
import sys

def convert_number(number):
    """Function to convert the numbers into text"""
    dicciunits = {
        1: "One", 2: "Two", 3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight",
        9: "Nine", 10: "Ten", 11: "Eleven", 12: "Twelve",
        13: "Thirteen", 14: "Fourteen", 15: "Fifteen",
        16: "Sixteen", 17: "Seventeen", 18: "Eighteen",
        19: "Nineteen"
    }
    diccidec = {
        20: "Twenty", 30: "Thirty", 40: "Forty",
        50: "Fifty", 60: "Sixty", 70: "Seventy", 80: "Eighty",
        90: "Ninety"
    }
    if number >= 1 and number < 20:
        return dicciunits[number]
    elif number >= 20 and number < 100:
        temp = (number/10) *10
        number = number - temp
        return diccidec[temp]+ convert_number(number)
    elif number >= 100 and number < 1000:
        temp = (number / 100)
        number = number%100
        return dicciunits[temp] +"Hundred"+ convert_number(number)
    elif number >= 1000 and number < 10000:
        temp = number/1000
        number = number%1000
        return dicciunits[temp]+"Thousand"+convert_number(number)
    elif number >= 10000 and number < 100000:
        temp = number/1000 *1000
        temp2 = number/1000
        number = number-temp
        return convert_number(temp2)+"Thousand"+convert_number(number)
    elif number >= 100000 and number < 1000000:
        temp = number /100000
        number = number%100000
        if number == 0:
            helper = convert_number(temp)+"HundredThousand"
        else:
            helper = convert_number(temp)+"Hundred"+convert_number(number)
        return helper
    elif number >= 1000000 and number < 1000000000:
        temp = number/1000000
        number = number%1000000
        if number == 0:
            return convert_number(temp)+"Million"
        else:
            return convert_number(temp)+"Million"+convert_number(number)
    else:
        return ""
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        if test.strip() != "":
            print convert_number(int(test))+"Dollars"
        