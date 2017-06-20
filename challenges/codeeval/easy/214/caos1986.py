import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    a=test.replace("\n","").split(" ")
    a.sort()
    a.reverse()
    s=""
    for i in a:
        s+=i+" "
    print s
test_cases.close()
