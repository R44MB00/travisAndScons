
import sys
import re 
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        nice = re.findall("\d",stringe)
        doubles = 0
        singles = 0
        for i in range(0,len(nice)):
            if i%2 == 0:
                doubles += (int(nice[i])*2)
            else:
                singles += int(nice[i])
        
        suma = doubles + singles
        
        if suma%10 == 0:
            print ("Real")
        else:
            print ("Fake")