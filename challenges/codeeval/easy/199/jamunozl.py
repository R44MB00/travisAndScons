import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split(' ')
    array1= list(array[0])
    array2=list(array[1])
    array2.pop()
    longitud=len(array2)
    for i in range(0,longitud):
        if(int(array2[i])==1):
            array1[i]=array1[i].upper()
    if(longitud==1 and int(array2[0])==1):
        array1[0]=array1[0].upper()
    print ("".join(array1))
    #print(array1)
    #print(array2)

test_cases.close()
