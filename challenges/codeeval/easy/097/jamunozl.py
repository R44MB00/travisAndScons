import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split('|')
    arrayName=list(array[0])
    arrayNumber=array[1].split(' ')
    arrayNumber.remove('')
    arrayNumber[-1] = arrayNumber[-1].strip()
    lenghtArraynumber=len(arrayNumber)
    result=[]
    value=0
    for i in range(0,lenghtArraynumber):
        value=int(arrayNumber[i])-1
        result.append(arrayName[value])
    print (''.join(result))

    #print(len(arrayName))
    #print(arrayName)
    #print (arrayNumber)
    #print(result)
test_cases.close()
