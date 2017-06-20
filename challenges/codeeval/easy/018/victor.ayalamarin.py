__author__ = "VICAYALA82"
import sys
#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
numLin=len(file.readlines())
file.close()
file2 = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
#file2 = open(sys.argv[1], 'r')
for i in range(0,numLin):
    lin=file2.readline()
    linea=lin.rstrip('\n')
    linea2=linea.split(',')
    for k in range(len(linea2)):
        linea2[k]=int(linea2[k])
    j=1
    aux=linea2[1]
    while linea2[0] >= linea2[1]:
        linea2[1]=aux*j
        j=j+1
    print(linea2[1])
file2.close()
file.close()
