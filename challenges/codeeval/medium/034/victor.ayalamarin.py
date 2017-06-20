__author__ = "VICAYALA82"
__date__ = "$Dec 4, 2015 8:45:57 PM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    if linea:
        n=linea.find(';')
        resultado=''
        part1 = linea[:n].strip(' ').split(',')
        part2 =linea[n+1:].strip(' ')
        auxn =int(part2)
        for k in range (len(part1)):
            aux=int(part1[k])
            part1[k]=aux
        ban=False;
        for i in range(len(part1)):
            for j in range(i+1,len(part1)):
                if part1[i]+part1[j]==auxn:
                    resultado=resultado+str(part1[i])+','+str(part1[j])+';'
                    ban=True
        if ban:
            print (resultado.strip(';'))
        else:
            print ('NULL')
file.close()
