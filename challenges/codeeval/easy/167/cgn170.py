__author__ = 'cnoguera'
import sys
import re

file = open(sys.argv[1],'r')
for line in file:
    if len(line)<=300 and not re.search("  ",line):
        if len(line)<=55:
            print line.rstrip("\n")
        else:
            if(' ' in line[0:40]):
                print line[0:line[0:40].rfind(" ")]+"... <Read More>"
    else:
        print ""
file.close()
