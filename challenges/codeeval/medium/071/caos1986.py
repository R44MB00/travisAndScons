import sys
import math 
 
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    p=test.split(";")
    l=p[0].split(",")
    x=int(p[1])
    o=[]
    for i in range(len(l)/x):
        t=l[i*x:(i+1)*x]
        o+=t[::-1]
    o+=l[-1*(len(l)%x):]
    r=','.join(o)
    print r
    
test_cases.close()
