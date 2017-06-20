import sys
test_cases=open(sys.argv[1], 'r')
for test in test_cases:
    longitud=len(test)
    array=[]
    for i in range(0,longitud-1,1):
        array.append(i)
        array.append(int(test[i]))#esta hace que el numero que me dan lo convierto en un array
    longitud1=len(array)
    total=0
    for i in range(0,longitud1-1,2):
        compara=array.count(array[i])-1#compara elemento de la lista
        if(compara==array[i+1]):
            total=total+1#el resultado lo guardo en una variable para despues ver si cumplen todos con lo pedido
    if(total==longitud-1):
        print("1")
    else:
        print("0")
test_cases.close()
