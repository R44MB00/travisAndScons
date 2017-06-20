import sys 
def fizzbuzz (a,b,length):
	result= []
	for i in range(1,length+1):
		result.append(str((i % a == 0)* 'F' + (i % b==0)* 'B'or i))
	return result

test_cases= open("input.txt", 'r')
for test in test_cases:
	a,b,length= test.split(" ")

	print ' '.join(fizzbuzz(int(a),int(b),int (length)))
