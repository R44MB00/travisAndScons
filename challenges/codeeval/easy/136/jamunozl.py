import sys
test_cases = open(sys.argv[1], 'r')
array=[]
for test in test_cases:
    array.append(test)
length=len(array)-1
for i in range (length,0,-1):
    try:
        if(array[i].index('C')):
            position1=array[i].index('C')
            #print("posicion1",position1)
    except:
        position1=array[i].index('_')
        #print("posicion1",position1)
    try:
        if(array[i-1].index('C')):
            position2=array[i-1].index('C')
            #print(position2)
    except:
        position2=array[i-1].index('_')
        #print(position2)
        
    if(position1==position2):
        s = list(array[i])
        s[position1]='|'
        array[i] = ("".join(s))
    if(position1>position2):
        s = list(array[i])
        s[position1]='\\'
        array[i] = ("".join(s))
    if(position1<position2):
        s = list(array[i])
        s[position1]='/'
        array[i] = ("".join(s))
try:
    if(array[0].index('C')):
        position1=array[0].index('C')
        s = list(array[0])
        s[position1]='|'
        array[0] = ("".join(s))
            #print("posicion1",position1)
except:
    position1=array[0].index('_')
    s = list(array[0])
    s[position1]='|'
    array[0] = ("".join(s))
        #print("posicion1",position1)
for i in range(0,len(array),1):
    print (array[i])
test_cases.close()
