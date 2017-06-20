import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        v=test.split(" ")
        x=0
        for i in range(1,int(v[1])+1):
            if bin(i).count("0")-1==int(v[0]):
                x+=1
        print str(x)
