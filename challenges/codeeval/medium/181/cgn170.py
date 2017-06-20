__author__ = 'cnoguera'
import sys

file = open(sys.argv[1], 'r')
alphabet=list(" !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
for line in file:
    line=line.rstrip("\n")
    test_list=line.split(";")
    key=test_list[0]
    key_fill=""
    crypt=test_list[1]
    j=0
    for i in range(0,len(crypt),1):
        key_fill+=key[j]
        j+=1
        if j>=len(key):
            j=0
    answer=""
    for i in range(0,len(crypt),1):
        offset=alphabet.index(crypt[i])-int(key_fill[i])
        if(offset<0):
            offset=len(alphabet)-(offset*(-1))
        answer+=alphabet[offset]
    print answer
file.close()
