__author__ = "VICTOR"
__date__ = "$Nov 26, 2015 10:29:32 AM$"
#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
linea=file.readline().strip(' \n')
while linea!="":
    linea2=linea.split(' ')
    numeroEle=len(linea2)
    num=int(linea2[(numeroEle - 1)])
    if numeroEle > num:  
        print (linea2[(numeroEle-num-1)])
        linea=file.readline().strip(' \n')
    else:
        linea=file.readline().strip(' \n')
file.close()
