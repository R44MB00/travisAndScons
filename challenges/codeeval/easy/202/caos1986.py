import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    w=test.strip().split(" ")
    m=0
    ind=0
    for i in range(len(w)):
        if len(w[i])>m:
            m=len(w[i])
            ind=i
    v=w[ind]
    o=""
    for i in xrange(len(v)):
        o+=("*"*i)+v[i]+" "
    print o
test_cases.close()
