import sys
import json
file = open(sys.argv[1], 'r')
for test in file:
    if not test.isspace():
        json_decode = json.loads(test)
        list_items=[]
        result=0
        for item in json_decode['menu']['items']:
            if item:
                if 'label' in item:
                    result+=int(item[u'id'])
        print result
file.close()
