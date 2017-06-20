import sys
import string

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    a, b = test.split(";")
    b = int(b)
    a = [int(x) for x in a.split(",") ]
    parejas = ""
    for i in range(len(a)):
        for j in range(i, len(a)):
            if a[i]+a[j] == b:
                parejas += ";"+str(a[i])+","+str(a[j])
    print "NULL" if parejas == "" else parejas[1:]  
