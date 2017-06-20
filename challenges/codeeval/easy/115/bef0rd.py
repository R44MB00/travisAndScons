import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    n = test.split(",")
    digits = [x for x in n if x.isdigit()]
    words = [x for x in n if not x.isdigit()]
    if len(words) == 0 or len(digits) == 0:
        print test
    else:
        out = ""
        for i in words:
            out += i+" "
        out = out.strip()
        out += "|"
        for i in digits:
            out += i+" "
        print out.strip().replace(" ", ",")
    
    
