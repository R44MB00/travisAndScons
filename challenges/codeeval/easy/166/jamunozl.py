
import sys
test_cases = open(sys.argv[1], 'r')

for test in test_cases:
    finalString = []
    segundos=0    
    minutos=0
    horas=0
    array = test.split(' ')
    array1Def = array[0].split(':')
    array2Def = array[1].split(':')
    array=([s.replace(':', '') for s in array])
    array1=int(array[0])
    array2=int(array[1])
    if (array1>=array2):
        if (int(array1Def[2])>=int(array2Def[2])):
            segundos=int(array1Def[2])-int(array2Def[2])
        else:
            segundos=60-int(array2Def[2])+int(array1Def[2])
            array1Def[1]=int(array1Def[1])-1
        if (int(array1Def[1])>=int(array2Def[1])):
            minutos=int(array1Def[1])-int(array2Def[1])
        else:
            minutos=60-int(array2Def[1])+int(array1Def[1])
            array1Def[0]=int(array1Def[0])-1
        if (int(array1Def[0])>=int(array2Def[0])):
            horas=int(array1Def[0])-int(array2Def[0])
        else:
            horas=60-int(array2Def[0])+int(array1Def[0])
    else:
        if (int(array2Def[2])>=int(array1Def[2])):
            segundos=int(array2Def[2])-int(array1Def[2])
        else:
            segundos=60-int(array1Def[2])+int(array2Def[2])
            array2Def[1]=int(array2Def[1])-1
        if (int(array2Def[1])>=int(array1Def[1])):
            minutos=int(array2Def[1])-int(array1Def[1])
        else:
            minutos=60-int(array1Def[1])+int(array2Def[1])
            array2Def[0]=int(array2Def[0])-1  
        if (int(array2Def[0])>=int(array1Def[0])):
            horas=int(array2Def[0])-int(array1Def[0])
        else:
            horas=60-int(array1Def[0])+int(array2Def[0])
    orderHoras = 2-len(str(horas))
    orderMinutos = 2-len(str(minutos))
    orderSegundos = 2-len(str(segundos))
    if(orderHoras>0):
        finalString.append('0')
        finalString.append(str(horas))
        finalString.append(':')
    else:
        finalString.append(str(horas))
        finalString.append(':')        
    if(orderMinutos>0):
        finalString.append('0')
        finalString.append(str(minutos))
        finalString.append(':')
    else:
        finalString.append(str(minutos))
        finalString.append(':')  
    if(orderSegundos>0):
        finalString.append('0')
        finalString.append(str(segundos))
    else:
        finalString.append(str(segundos))
   

    print(''.join(finalString))
    #print (array1, array2)
    #order = 6-len(str(result))
    #result1=[int(x) for x in str(result)]
    #for i in range (0,order):
    #    result1.insert(0, '0')
    #result1.insert(2, ':')
    #result1.insert(5, ':')
    #print ("".join(str(x) for x in result1))
    #print(result1)
    

test_cases.close()
