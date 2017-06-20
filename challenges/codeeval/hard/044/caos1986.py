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
    ans=perm(test.strip()+"0")
    ans=list(set(ans))
    ans=[int(x) for x in ans]
    ans=sorted(ans)
    print ans[ans.index(int(test))+1]
test_cases.close()
