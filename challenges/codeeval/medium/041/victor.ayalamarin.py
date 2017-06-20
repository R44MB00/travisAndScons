
__author__ = "VICAYALA82"
__date__ = "$Dec 4, 2015 7:38:07 PM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    if linea:
        n=linea.find(';')
        part1 = linea[:n].strip(' ')
        auxn=int(part1)
        part2 =(linea[n+1:].strip(' ').split(','))
        for k in range (len(part2)):
            aux=int(part2[k])
            part2[k]=aux
        for i in range(auxn-1):
            part2.remove(i)
        print (part2[0])
file.close()
