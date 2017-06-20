import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split(' ')
    stripped_line = [s.rstrip() for s in array]
    results = [float(i) for i in stripped_line]
    #results = [('%.3f' % i) for i in results]
    myList = sorted(set(results))
    myList = [('%.3f' % i) for i in myList]
    #myList = map(str, myList)
    #print (myList)
    print(" ".join(myList))
test_cases.close()
