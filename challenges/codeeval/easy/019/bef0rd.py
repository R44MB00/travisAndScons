
import sys

       
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
#int(test_case)
for test in test_case:
    n, b1, b2 = test.split(",")
    b1 = int(b1)
    b2 = int(b2)
    binario = bin(int(n))
    #print binario, n, binario[b1*-1][0],  binario[b2*-1][0]
    print "true" if binario[b1*-1][0] == binario[b2*-1][0] else "false"
