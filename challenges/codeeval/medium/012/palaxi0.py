
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        result = ""
        for i in range(0,len(stringe)):
            if stringe.count(stringe[i]) == 1:
                result = stringe[i]
                break
        print (result)
