__author__ = 'cnoguera'
import sys
import re
file = open(sys.argv[1],'r')
for line in file:
    var=line.rstrip("\n").split(";")
    rep={"zero":0,
         "one":1,
         "two":2,
         "three":3,
         "four":4,
         "five":5,
         "six":6,
         "seven":7,
         "eight":8,
         "nine":9
         }
    print "".join(str(rep[x]) for x in var)
file.close()
