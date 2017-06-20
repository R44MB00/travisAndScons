import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    test = test.strip()
    salio = False
    for i in range(0, len(test)):
        #print "test ", test
        n = int(test[i])
        #print "cantidad ", test.count(str(i)), n
        if n != test.count(str(i)):
            print "0"
            salio = True
            break
    if salio == False:
        print 1
        
