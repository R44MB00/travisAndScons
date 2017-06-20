
__author__ = "VICAYALA82"
__date__ = "$Dec 4, 2015 8:20:17 AM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    if linea:
        print (linea.lower())
file.close()
