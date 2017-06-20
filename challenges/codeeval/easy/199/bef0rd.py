import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    word, mask = test.split(" ")
    c = 0
    out = ""
    for i in mask:
        if i == "1":
            out += word[c].upper()
        else:
            out += word[c].lower()
        c = c + 1
    print out
