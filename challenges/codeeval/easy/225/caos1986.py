import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        bugs=0
        test=test.split("|")
        test[0]=test[0][:-1]
        test[1]=test[1][1:]
        for i in range(len(test[0])):
            if test[0][i]!=test[1][i]:
                bugs+=1
        if bugs==0:
            print "Done"
        elif bugs<=2:
            print "Low"
        elif bugs<=4:
            print "Medium"
        elif bugs<=6:
            print "High"
        elif bugs>6:
            print "Critical"
