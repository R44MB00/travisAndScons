import sys,string

def duplicate(seq):
  seen = set()
  seen_add = seen.add
  seen_twice = set( x for x in seq if x in seen or seen_add(x) )
  return list( seen_twice )


test_cases = open(sys.argv[1], 'r')
suma =""
for test in test_cases:
	if (test != None):
		test = test.strip()
		test = test.split(";")
		x = (duplicate(test[1].split(",")))
		print (x[0])
test_cases.close()
