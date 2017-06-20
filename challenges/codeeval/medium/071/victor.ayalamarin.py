__author__ = "VICTOR"
__date__ = "$Dec 6, 2015 7:24:40 AM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    n=linea.find(';')
    part1 = linea[:n].strip(' ').split(',')
    part2 =linea[n+1:].strip(' ')
    nx=int(part2)
    for i in range(len(part1)):
        naux=int(part1[i])
        part1[i]=naux
    tam=len(part1)
    j=0
    resp=[]
    while tam>=nx:
        tam=tam-nx
        aux=[]
        for x in range(len(resp),(len(resp)+nx)):
            aux.append(part1[x])
        for k in range(len(aux)):
            resp.append(aux.pop())
    if tam !=0:
        rest=(len(part1))-tam
        for m in range (rest,len(part1)):
            resp.append(part1[m])
    cadenres=''
    for a in range (len(resp)):
        cadenres=cadenres+str(resp[a])+','
    print (cadenres.strip(', '))
file.close()
