import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    result=int(test)
    print("{0:b}".format(result))
    #print ((result))   

test_cases.close()
