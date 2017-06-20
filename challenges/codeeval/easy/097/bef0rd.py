import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    a, b = test.split("|")
    out = ""
    for i in b.split():
        out += a[int(i)-1]
    print out
