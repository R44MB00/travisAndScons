import sys
c=""

def noSmile(i):
    return i==0 or c[i-1]==':'
    
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    c=test
    aopen=0
    topen=0
    for i in range(len(test)):
        if c[i]=='(':
            aopen+=1
            if noSmile(i):
                topen+=1
        elif c[i]==')':
            topen-=1
            topen=max(0,topen)
            if noSmile(i):
                if aopen>=0:
                    aopen-=1
                else:
                    break

    if topen==0 and aopen>=0:
        print("YES")
    else:
        print("NO")
test_cases.close()
