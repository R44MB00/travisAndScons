import sys
class Modulus:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			num = test.split(",")
			num1 = int(num[0])
			num2 = int(num[1])
			modu = num1- (num2*(num1/num2))
			print(modu)