__author__ = 'cnoguera'
import sys

file=open(sys.argv[1], 'r')
for lines in file:
   array=lines.split(" ")
   if len(array)>1:
       print " ".join(word.rstrip('\n') for word in array[::-1]),
       print " "
   else:
        print " "
file.close()
