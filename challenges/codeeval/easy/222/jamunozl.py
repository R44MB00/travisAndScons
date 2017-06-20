import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    cadena=test.split(' ')
    #print(cadena)
    count=int(cadena[len(cadena)-1])
    #print("conteo",count)
    del [cadena[len(cadena)-1]]
    del [cadena[len(cadena)-1]]
    
    
    for i in range(0,len(cadena)-1,1):
        #print(cadena,"longitud",len(cadena),"count", count)
        if(count<=len(cadena)):
            del [cadena[count-1]]
            #print(cadena)
        else:
            count1=count
            while(count1>len(cadena)):
                count1=count1-len(cadena)
            #if(count<len(cadena)):
            #   count=count-len(cadena)
            del [cadena[count1-1]]
            
            #print(cadena)
    for i in range(0,len(cadena),1):
        print(cadena[i])        
test_cases.close()
