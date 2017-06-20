import sys

test_cases = open("input.txt", 'r')
for test in test_cases:
    
    dat = map(int, test.split())
    string = ""
    if dat[1] > dat[3]:
        string += "S"
    elif dat[1] < dat[3]:
        string += "N"
    if dat[0] > dat[2]:
        string += "W"
    elif dat[0] < dat[2]:
        string += "E"
    if dat[0] == dat[2] and dat[1] == dat[3]:
        string += "here"
    print string
