__author__ = 'cnoguera'
import sys
from datetime import datetime
file = open(sys.argv[1],'r')
ft="%H:%M:%S"
for line in file:
    lt=line.rstrip("\n").split(" ")
    lr=[datetime.strptime(w,ft) for w in lt]
    print " ".join([datetime.strftime(w,ft) for w in sorted(lr,reverse=True)])
file.close()
