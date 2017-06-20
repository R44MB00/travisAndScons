__author__ = 'cnoguera'
import sys
def reverse(num):
    return int(str(num)[::-1])
def palindrome(num):
    return str(num)==str(num)[::-1]
file = open(sys.argv[1],'r')
limit=100
for line in file:
    numi=int(line.rstrip("\n"))
    palind=False
    contl=0
    while not palind and contl<100:
        contl+=1
        r=numi+reverse(numi)
        if palindrome(r):
            palind=True
            break
        else:
            numi=r
    print str(contl)+" "+str(r)
file.close()
