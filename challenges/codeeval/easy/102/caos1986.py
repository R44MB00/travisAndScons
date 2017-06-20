import json
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    j=json.loads(test)
    sum=0
    for e in j['menu']['items']:
		if e!= None and "label" in e.keys():
		    sum+=int(e['id'])
    print(sum)
test_cases.close()
