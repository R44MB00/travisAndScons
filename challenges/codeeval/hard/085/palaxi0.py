import sys

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    line = test.strip().split(",")
    m = []
    n = int(line[0])
    k = int(line[1])
    a = int(line[2])
    b = int(line[3])
    c = int(line[4])
    r = int(line[5])
    m.append(a)
    for i in range(1, k):
        m.append((b * m[i-1] + c) % r)
    for i in range(k, n):
        msort = sorted(m)
        minimun = 0
        while True:
            if minimun not in msort:
                break
            else:
                minimun += 1
        m.append(minimun)
        m.pop(0)
    print (m[-1])

