import sys

test_cases=open("test5.txt",'r')
for test in test_cases:
	text=test.swapcase()
	print text
