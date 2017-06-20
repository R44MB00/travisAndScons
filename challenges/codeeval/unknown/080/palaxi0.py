import re
import urllib
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        ur1 = stringe.split(";")[0].lower()
        ur2 = stringe.split(";")[1].lower()
        lista1 = urllib.unquote(re.sub(":\d+","",ur1))
        lista2 = urllib.unquote(re.sub(":\d+","",ur2))
        if lista1 == lista2:
            print (True)
        else:
            print (False)