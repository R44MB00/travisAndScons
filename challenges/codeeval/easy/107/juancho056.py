import sys

test_cases=open("input.txt", 'r')
for test in test_cases:
	dat=test.strip()
	repetition= set ()
	count=0
	for i in dat:
			repetition.add(i)
			count+=1
	print len(repetition)
