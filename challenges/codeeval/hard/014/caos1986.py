import sys

def perm(s):
    if len(s)==2:
        return [s,s[::-1]]
    else:
        r=[]
        for i in range(len(s)):
            r+= [s[i]+e for e in perm(s[:i]+s[i+1:])]
        return r

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    ans=sorted(perm(test.strip()))
    out=""
    for i in xrange(len(ans)):
        if(i!=len(ans)-1):
            out+=ans[i]+","
        else:
            out+=ans[i]
    print out
test_cases.close()
