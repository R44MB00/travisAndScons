import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    l = test.split(" ")
    t=""
    for e in l:
        t+=e.strip()[-1]+e.strip()[1:-1]+e.strip()[0]+" "
    print t+" "

test_cases.close()
