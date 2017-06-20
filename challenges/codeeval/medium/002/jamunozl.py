import sys
test_cases = open("test.txt", 'r')
xAppend = []
t=[]
for test in test_cases:
	xAppend.append(test.rstrip('\n'))
xAppend.sort(key=lambda item: (-len(item), item))
lenght = len(xAppend)
for i in range (0,lenght):
	print(xAppend[i])
#print(xAppend)
test_cases.close()
