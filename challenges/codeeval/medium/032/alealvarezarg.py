

import sys
test_cases = open(sys.argv[1], 'r')
for line in test_cases:
    
    line = line.strip()

    compare1 = line.split(',')[0][::-1]
    compare2 = line.split(',')[1][::-1]

    if(len(compare1) < len(compare2)):
        print(0)
    else:
        aux = compare1[0:len(compare2)]
        if(aux == compare2):
            print(1)
        else:
            print(0)

test_cases.close()


