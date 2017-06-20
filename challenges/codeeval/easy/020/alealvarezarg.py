
import sys
test_cases = open(sys.argv[1], 'r')
for line in test_cases:
    
    number = int(line)
    
    a1 = 1
    a2 = 1
    fib = 0

    if(number == 1 or number == 2):
        print(1)
    else:
        count = 3
        while(count<=number):
            fib = a1 + a2
            a1 = a2
            a2 = fib
            count = count + 1
        print(fib)

test_cases.close()
