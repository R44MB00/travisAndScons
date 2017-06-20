from datetime import datetime
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        timing = test.strip().split(" ")
        timing2 = sorted(timing,reverse = True)
        fs = '%H:%M:%S'
        time1= datetime.strptime(timing2[0],fs)
        time2 = datetime.strptime(timing2[1],fs)
        rest=  str(time1-time2)
        lista = rest.split(":")
        print ("%02d"%int(lista[0])+":"+"%02d"%int(lista[1])+":"+"%02d"%int(lista[2]))