__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split("|")
    for i in lt[1].lstrip(" ").split(" "):
        sys.stdout.write(lt[0][int(i)-1])
    print
file.close()
