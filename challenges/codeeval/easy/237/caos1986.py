import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test=test.split("|")
        test[0]=test[0].strip().split(" ")
        test[1]=test[1].strip().split(" ")
        sv=0
        sa=0
        for i in test[0]:
            sv+=int(i,16)
        for i in test[1]:
            sa+=int(i,2)
        if sv<=sa:
            print "True"
        else:
            print "False"
