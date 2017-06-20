import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    array=test.split('|')
    array1=array[0].split(' ')
    array1.pop()
    array2=array[1].split(' ')
    array2.pop(0)
    array2 = [s.rstrip() for s in array2]
    lenght=len(array2)
    for i in range(0,lenght):
        result=int(array1[i])*int(array2[i])
        array1[i]=result
    for j in range(0,lenght):
        print(array1[j],end=" ")
    print("\n")
test_cases.close()
