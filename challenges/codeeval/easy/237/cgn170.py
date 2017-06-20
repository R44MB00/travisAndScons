__author__ = 'cnoguera'
import sys

file = open(sys.argv[1], 'r')
for line in file:
    line=line.rstrip("\n")
    test_list=line.split("|")
    virus_list=test_list[0].split()
    antivirus_list=test_list[1].split()
    c_v=0
    c_a=0
    for i in range(0,len(virus_list),1):
        c_v+=int(virus_list[i],16)

    for i in range(0,len(antivirus_list),1):
        c_a+=int(antivirus_list[i],2)
    if c_a >= c_v:
        print "True"
    else:
        print "False"
file.close()
