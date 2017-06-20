import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt", 'r')
    
for test in test_cases:
	result1=test.count('>>-->')
	result2=test.count('<--<<')
	print("result1:",result1)
	print("result2:",result2)
test_cases.close()
