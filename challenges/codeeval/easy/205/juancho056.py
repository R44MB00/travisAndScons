import sys

test_cases = open("input.txt", 'r')
for test in test_cases:
    string=""
    for char in test:
        if char.isalpha():
            string += char
        else :
            string += " "
    string = string.strip()
    words = string.split()
    string = ""
    for i in range(len(words)):
        if i > 0 :
            string += " "
        string += words[i].lower()
    print string
