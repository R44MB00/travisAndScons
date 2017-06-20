import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array = test.split(',')
    array[1] = array[1].strip()
    verify=(array[1] in array[0])
    if (verify==True):
        print("1")
    else:
        print("0")
    #print(verify)
    #print (array)

test_cases.close()
