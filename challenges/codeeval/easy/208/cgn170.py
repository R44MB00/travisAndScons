__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    lt=line.rstrip("\n").split("|")
    lc=len(lt)
    for i in range(0,len(lt[0].rstrip(" ").lstrip(" ").split(" ")),1):
        max=-99999999999999
        for j in range(0,lc,1):
            lj=[int(x) for x in lt[j].rstrip(" ").lstrip(" ").split(" ")]
            if lj[i]>max:
                max=lj[i]
        print max,
    print
file.close()
