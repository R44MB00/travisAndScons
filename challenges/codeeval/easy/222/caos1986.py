import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test=test.split("|")
        n=int(test[1])
        l=test[0].strip().split(" ")
        while len(l)>1:
            del l[(n-1) % len(l)]
        print l[0]
