import sys,string

#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:
    test = test.strip()
    test = test.split(",")
    s = []
    for i in test:
       if i not in s:
          s.append(i)

    print (','.join(s))


test_cases.close()
