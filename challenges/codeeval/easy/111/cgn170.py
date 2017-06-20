__author__ = 'cnoguera'
import sys

file = open(sys.argv[1],'r')
for line in file:
   list=line.rstrip("\n").split(" ")
   bigger=""
   max=0
   for i in list:
    if len(i)>max :
        max=len(i)
        bigger=i

   print bigger

file.close()
