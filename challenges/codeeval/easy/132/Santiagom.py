import sys

test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()
    test = test.split(",")
    n = len(test)
    i = 0
    while ( i < n):
        if (test.count(test[i]) > (n/2)):
            x = (test[i])
            break
        else:
            i += 1
            x = ""
    if len(x) > 0:
        print (x)
    else:
        print(None)

test_cases.close()

