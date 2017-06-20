import sys 

test_case=open("test4.txt",'r')
for test in test_case :
	s,t=test.rstrip().split(',')
	res=s.find(t)
	print (res)
test_case.close()
