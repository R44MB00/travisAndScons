import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split(',')
    stripped_line = [s.rstrip() for s in array]
    
    results = [int(i) for i in stripped_line]
    myList = sorted(set(results))
    myList = map(str, myList)

    print(",".join(myList))
test_cases.close()
