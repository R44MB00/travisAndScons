import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    s = test.split(" ")
    pos = int(s.pop())
    if pos <= len(s):
        print s[pos*-1]
    
