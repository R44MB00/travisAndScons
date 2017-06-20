import sys
def sumDigits(num):
	num = int(num) * 2
	suma = 0
	if num < 10:
		return num
	else:
		for i in str(num):
			suma = int(i) + suma
		return suma
		
#test_cases = open(sys.argv[1], 'r')

test_cases = open('test.txt')
for test in test_cases:
    test = test.strip()
    test = test.replace(' ','')
    test = test[::-1]
    suma = []
    for i in range(0,len(test)):
    	if i%2 != 0:
    		suma.append(sumDigits(test[i]))
    	else:
    		suma.append(test[i])

    n = 0
    for i in suma:
    	n = n + int (i)

    if n%10 == 0:
    	print (1)
    else:
    	print (0)

test_cases.close()
