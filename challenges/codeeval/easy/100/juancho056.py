import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    if test: 
    	num = int(test); 
    	if num % 2 == 0:
    		print "1"; 
    	else: 
    		print "0"; 	

