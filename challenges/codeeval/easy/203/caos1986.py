import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    count=0
    for i in range(len(test)-5):
        if test[i:i+5]==">>-->" or test[i:i+5]=="<--<<":
            count+=1
    print count
test_cases.close()
