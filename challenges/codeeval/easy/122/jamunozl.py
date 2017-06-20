import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    longitud = len(test)
    print("")
    none=0
    for i in range(0,longitud-1,1):
            #print("Longitud", longitud, "none", none)
            
            if(test[i] == 'a' or test[i] == '0'):
                print ("0",end='')
            elif(test[i] == 'b' or test[i] == '1'):
                print ("1",end='')
            elif(test[i] == 'c' or test[i] == '2'):
                print ("2",end='') 
            elif(test[i] == 'd' or test[i] == '3'):
                print ("3",end='')
            elif(test[i] == 'e' or test[i] == '4'):
                print ("4",end='')
            elif(test[i] == 'f' or test[i] == '5'):
                print ("5",end='')
            elif(test[i] == 'g' or test[i] == '6'):
                print ("6",end='')  
            elif(test[i] == 'h' or test[i] == '7'):
                print ("7",end='')
            elif(test[i] == 'i' or test[i] == '8'):
                print ("8",end='')
            elif(test[i] == 'j' or test[i] == '9'):
                print ("9",end='')
            else:
                none=none+1
            if (i == longitud-2 and none == longitud-1):
                #print(longitud, none)
                print("NONE",end='')
                

test_cases.close()
