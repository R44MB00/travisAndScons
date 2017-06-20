import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        dicci = { 'a': '0', 'b':'1' , 'c':'2','d':'3','e':'4',
'f':'5','g':'6','h':'7','i':'8','j':'9'}
        stringe = test.strip()
        salida = ""
        for i in stringe:
            if i in dicci:
                salida += dicci[i]
            elif i.isdigit():
                salida += i
        
        if salida != '':
            print (salida)
        else:
            print ('NONE')
