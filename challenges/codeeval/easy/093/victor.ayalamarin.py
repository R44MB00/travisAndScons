
__author__ = "VICTOR"
__date__ = "$Dec 5, 2015 9:22:26 AM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    print (linea.title())
    linLis=linea.split(' ')
    cadRes=''
    for i in range(len(linLis)):
        cadRes=cadRes+linLis[i].capitalize()+' '
    print(cadRes.strip(' '))
file.close()
