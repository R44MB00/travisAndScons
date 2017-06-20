
__author__ = "VICTOR"
__date__ = "$Nov 26, 2015 8:45:04 AM$"


file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
linea=file.readline().strip(' \n')
while linea!="":
    print (int(linea,16))
    linea=file.readline().strip(' \n')
file.close()
