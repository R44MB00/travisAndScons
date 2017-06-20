
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        s1 = stringe.split(",")[0]
        s2 = stringe.split(",")[1]
        s11 = [i for i in s1]
        s22 = [i for i in s2]
        count = 0
        for i in s22:
            if i == "*":
                count+=1
            elif i in s11:
                s11.remove(i)
                count += 1
        if count == len(s2):
            print ("true")
        else:
            print ("false")
            