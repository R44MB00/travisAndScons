__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
buff=-1
for line in file:
    line=line.rstrip("\n")
    r=""
    if buff>=0:
        cp=line.find("C")
        g=line.find("_")
        if cp>0:
            if buff<cp:
                r=line.replace("C","\\")
            elif buff>cp:
                r=line.replace("C","/")
            else:
                r=line.replace("C","|")
            buff=cp
        else:
            if buff<g:
                r=line.replace("_","\\")
            elif buff>g:
                r=line.replace("_","/")
            else:
                r=line.replace("_","|")
            buff=g
    else:
        if "C" in line:
            r=line.replace("C","|")
        else:
            r=line.replace("_","|")
        buff=r.find("|")
    print r
file.close()
