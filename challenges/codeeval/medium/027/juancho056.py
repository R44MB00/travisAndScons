import sys
test_cases = open(sys.argv[1], 'r')

def decimal_a_binario(num):
    if num == 0:
        return ""
    else:
        return decimal_a_binario(num/2)+ str(num % 2)  

for test in test_cases:
   n=int(test)
   a= decimal_a_binario(n)
   print (a)
