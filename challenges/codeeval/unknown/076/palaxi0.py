import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        if test != "":
            stringe = test.strip()
            s11 = [i for i in stringe.split(",")[0]]
            s22 = [i for i in stringe.split(",")[1]]
            count = 0
            for i in s22:
                if i in s11:
                    s11.remove(i)
                    count += 1
            if count == len(s22):
                print (True)
            else:
                print (False)