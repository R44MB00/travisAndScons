import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    line= test.split("|")
    encoded=line[2].strip().split(" ")
    men=256
    for i in encoded:
        if int(i)<men:
            men=int(i)
    dif=men-32
    out=""
    for i in encoded:
        out+=chr(int(i)-dif)
    print out
test_cases.close()
