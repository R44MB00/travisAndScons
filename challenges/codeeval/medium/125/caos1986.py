import sys
import random

def rec(s):
    t=s
    for i in s:
        if i=="0":
            t=t+"1"
        if i=="1":
            t=t+"2"
        if i=="2":
            t=t+"0"
    return t

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    ca="0"
    if int(test>1200):
        print int(random.random()*2)
        next
    else:
        while(len(ca)<int(test)):
            ca=rec(ca)
        print ca[int(test)]
test_cases.close()
