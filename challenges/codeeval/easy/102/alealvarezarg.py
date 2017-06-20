

import sys
import json
test_cases = open(sys.argv[1], 'r')
for line in test_cases:
    
    line = json.loads(line)

    suma = 0
    for i in line['menu']['items']:
        try:
            i['label']
            suma = suma + i['id']
        except:
            suma = suma + 0

    print(suma)

test_cases.close()

