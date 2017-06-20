import sys
def findMayor(test):
    m = test[0]
    for i in test:
        if i > m:
            m = i

    return m
#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:
    test = test.strip()
    test = test.split(" ")
    print (test,len(test))
    x = findMayor(test)
    pos = 0
    for i in range(0, len(test)):
        if test.count(test[i]) == 1:
                if test[i] <= x:
                    x = test[i]
                    pos = i

    if pos != 0:
        print (pos+1)
    else:
        print (0)
test_cases.close()
