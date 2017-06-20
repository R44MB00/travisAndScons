import sys

#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")
# ans
# 2 1 3 3 4 2 3 14 3 11 1 2

# test 
# 1 1 3 3 3 2 2 2 2 14 14 14 11 11 11 2
for test in test_cases:
	test = test.strip()
	test = test.split(" ")
	i = 0
	suma = ""
	while (i < len(test)):
		n = int(test[i]) 
		t = test.count(test[i])
		i = i + int(t)
		suma += ("%d %d " % (t,n))
	print (suma.strip())
test_cases.close()
