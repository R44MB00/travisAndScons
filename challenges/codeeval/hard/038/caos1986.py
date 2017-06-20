import sys

def comb(s,l):
    if l==1:
        return [e for e in s]
    else:
        r=[]
        for i in range(len(s)):
            r+= [s[i]+e for e in comb(s,l-1)]
        return r

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    t=test.split(",")
    ans=comb(t[1].strip(),int(t[0]))
    ans=list(set(ans))
    ans=sorted(ans)
    s=""
    for i in range(len(ans)):
        if i!=len(ans)-1:
            s+= ans[i]+","
        else:
            s+= ans[i]
    print s
test_cases.close()
