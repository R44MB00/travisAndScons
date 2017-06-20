import sys
test_cases = open(sys.argv[1], 'r')
array = []
for test in test_cases:
    a=int(test)
    #print(a)
    binary= (bin(a)[2:])
    binary=str(binary)
    result=binary.count('1')
    print (result)
    #array=list(binary)
    #print (array)
    #print (array.index(1))
    
test_cases.close()
