import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
    	test = test.strip()
    	test = test.split("|")
    	rows = len(test)
    	cols = len(test[0].strip().split(" "))
    	vector = []
    	for i in range(0, rows):
    		vector.append(test[i].strip().split(" "))
    	k = 0
    	highestvalues = []
    	while (k < cols):
    		values = []
    		for i in range(0, len(vector)):
    			values.append(int(vector[i][k]))
    		k = k + 1
    		highestvalues.append(str(sorted(values,reverse=True)[0]))
    	print(' '.join(highestvalues))

