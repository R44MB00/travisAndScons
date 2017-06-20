import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test=test.strip()
    a=test.split("|")
    f=a[0].strip().split(" ")
    for i in a:
        i=i.strip()
        b=i.split(" ")
        for j in range(len(b)):
            if(int(b[j])>int(f[j])): f[j]=b[j]
    r=""
    for i in f:
        r+=i+" "
    print r
test_cases.close()   	
