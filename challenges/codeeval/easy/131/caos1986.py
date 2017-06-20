import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    l=test.split(" ")
    c=""
    for i in range(len(l[0])):
		if(l[1][i]!="-" and l[1][i]!="+"):
			c+=l[0][i]
		else:
			c+=l[1][i]
			i-=1
    print c

test_cases.close()
