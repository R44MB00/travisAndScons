__author__ = "VICTOR"
__date__ = "$Nov 26, 2015 12:25:19 PM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    if linea:
        print (str(bin(int(linea)))[2:])
file.close()
