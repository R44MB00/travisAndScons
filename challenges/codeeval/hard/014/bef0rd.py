import sys
import itertools

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
# raise ValueError(test_case)
for test in test_case:
	
	#w = [''.join(i) for i in itertools.combinations_with_replacement(test,len(test))]
	w = [''.join(i) for i in itertools.permutations(test,len(test))]
	w = sorted(set(w))
	output = ""
	for i in w:
		output += i+" "
	print (output.strip()).replace(" ", ",")
