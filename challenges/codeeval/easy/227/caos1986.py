import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test=test.replace(" ","")
        ac=0
        for i in range(len(test)):
            if (i+1)%2==1:
                ac+=(int(test[i])*2)z
        if ac%10==0:
            print "Real"
        else:
            print "Fake"
