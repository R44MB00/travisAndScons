
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        dicci = (test.strip().replace(" ",""))
        lista=[]
        for i in range(0,len(dicci)):
            if dicci.count(dicci[i])==1: 
                lista.append(int(dicci[i]))
        
        if lista != []:
            minimo = min(lista)
            print (dicci.index(str(minimo))+1)
        else:
            print ("0")
        
