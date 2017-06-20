__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split(",")
    print lt[0].rfind(lt[1])
file.close()
