import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    n = test.split(" ")
    m = sorted([float(i) for i in n])
    out = ""
    for i in m:
        out += "%.3f " % i 
    print out.strip()
