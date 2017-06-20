import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    t = test.replace(" ", "")
    c = 0
    tmp = 0
    for i in t:
        c = c + 1
        
        if c % 2 != 0:
            #print int(i) * 2
            tmp = tmp + int(i)*2
        else:
            #print int(i) 
            tmp = tmp + int(i)
    #print tmp 
    print "Fake" if tmp % 10 > 0 else "Real"
