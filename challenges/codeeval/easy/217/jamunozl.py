import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split(' ')
    result=0
    for i in range (1,int(array[1])+1):
        binary=bin(i).replace("0b", "")
        binaryCount=binary.count('0')
        if(binaryCount==int(array[0])):
            result=result+1
    
    print(result)

test_cases.close()
