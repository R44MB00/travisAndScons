import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    h = [int(i) for i in test.split()]
    houses = h[1:]
    print min(sum(abs(i-j) for j in houses) for i in range(1, max(houses)))
    
    
