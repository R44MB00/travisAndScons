import sys

test_cases=open("test.txt",'r')
for test in test_cases:
	#datos= test.rstrip().split(";")
	answer=""
	for i in test.rstrip().split(";"):
		numbers={ 'zero': 0,
		'one': 1,
		'two': 2,
		'three':3,
		'four': 4,
		'five': 5,
		'six':6,
		'seven':7,
		'eight':8,
		'nine':9}
		answer+=(str(numbers.get(i)))

	print answer
