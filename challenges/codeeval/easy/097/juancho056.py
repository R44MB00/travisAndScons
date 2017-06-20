import sys 

test_cases=open("input.txt", 'r')
for test in test_cases:
	write=test.strip().split("|")
	alphabet=(write[0].split(","))
	number=write[1].split()
	a= ''.join(alphabet)
	res=""
	for i in range(len(number)):
		aux=int(number[i])
		res+=(a[aux-1])+""

	print res
