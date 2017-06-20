import sys

test_cases=open("test.txt", 'r')
for test in test_cases:
	num=test.strip("\n").split(",")
	j= set (num)
	#print j
	solve=[]
	for i in range(len(num)):
		if num[i] != num [i-1]:
			solve.append(num[i])
			a=(",").join(solve)
        print (a)
