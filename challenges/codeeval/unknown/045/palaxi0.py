
import sys

def isPalin(num):
        if str(num) == str(num)[::-1]:
            return True
        else:
            return False
            
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        num = int(test.strip())
        itera = 0
        while isPalin(num) == False:
            num += int(str(num)[::-1])
            itera+= 1
        print (itera, num)