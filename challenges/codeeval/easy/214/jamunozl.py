import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    cadena = test.split(' ')
    #print([s.strip(':') for s in cadena]) 
    cadena=([s.replace(':', '') for s in cadena])
    cadena=sorted(cadena)
    cadena=cadena[::-1]
    for s  in range(0,len(cadena),1):
    #   print(''.join([ char if not ind or ind % 2 else ':' + char
    #                for ind,char in enumerate(s)
    #                ]
    #              )
    #      )
        
        t = iter(cadena[s])
        print(':'.join(a+b for a,b in zip(t, t)),end=' ')
    print("")


#print(cadena)
test_cases.close()
