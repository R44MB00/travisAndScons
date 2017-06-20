
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        stringe2 = ""
        for i in range (0,len(stringe)):
            if stringe[i].isupper():
                stringe2 += stringe[i].lower()
            else:
                stringe2 += stringe[i].upper()
        print (stringe2)
