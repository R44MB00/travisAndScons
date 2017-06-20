import sys
test_cases = open(sys.argv[1], 'r')

for test in test_cases:
    totalDef=0
    arrayComplete=test.split(',')
    lenghtArrayComplete=len(arrayComplete)
    #print(lenghtArrayComplete)
    arraySorted=(sorted(set(arrayComplete)))
    arraySorted=list(map(lambda x:x.strip(),arraySorted))
    lenghtArraySorted=len(arraySorted)
    #if lenghtArrayComplete>=10000 and lenghtArrayComplete<=30000:
    for i in range(0,lenghtArraySorted-1):
        total1=(arrayComplete.count(arraySorted[i]))
        if totalDef<total1:
            totalDef=total1
            numberResult=arraySorted[i]
    if(totalDef*2>=(lenghtArrayComplete-1)):
        print(numberResult)
    else:
        print("None")
    #print(lenghtArrayComplete,totalDef)
test_cases.close()
