import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test=test.split(",")
        a=int(test[0][test[0].find(":")+1:])
        b=int(test[1][test[1].find(":")+1:])
        c=int(test[2][test[2].find(":")+1:])
        d=int(test[3][test[3].find(":"):])
        print (((a*3)+(b*4)+(c*5))*d)/(a+b+c)
