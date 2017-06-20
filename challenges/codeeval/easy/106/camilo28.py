"""
Title: Roman Numerals
url: https://www.codeeval.com/open_challenges/106/
"""
def roman_to_numerals(file):
    """
    This fuction convert a number in roman format
    file: rute to the testcase
    return: the num in format roman numerals
    """
    #dictionary with the posibles numbers
    roman = { 1:"I", 2:"II",3:"III", 4:"IV", 5:"V", 6:"VI", 7:"VII", 8:"VIII", 9:"IX",
    10:"X", 20:"XX",30:"XXX",40:"XL",50:"L",60:"LX", 70:"LXX", 80:"LXXX", 90:"XC",
    100:"C", 200:"CC", 300:"CCC", 400: "CD",500:"D", 600:"DC", 700:"DCC", 800:"DC",
    900:"CM",1000:"M", 2000: "MM", 3000:"MMM",4000:"MMMM"}
    for line in file:
        number = int(line.rstrip("\n"))
        out = ""
        for num in sorted(roman.keys(),reverse=True):
            #whether the number is divisible by the biggest number
                if number >= num:
                        number = number % num
                        out += str(roman[num])
                if number == 0:
                    break
        print out

#-----------------------testcase-------------------------
path = raw_input("Please enter the rute to the file test: ")
file = open(path)
roman_to_numerals(file)
#-----------------------endtestcase------------------------
