import sys
import string


file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    num = (test).split(" ")
    out = ""
    for i in range(0, len(num), 2):
        if num[i] == "00":
            out += num[i+1].replace("0", "1")
        else:
            out += num[i+1]
    
    print int(out, 2)
