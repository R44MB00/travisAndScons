import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        lista = str(stringe)
        lista2 =[]
        indices = []
        si_no = 0
        for i in lista:
            lista2.append(int(i))
        
        for j in range (0,len(lista2)):
            indices.append(j)
        
        for k in range(0,len(lista2)):
            if lista2.count(indices[k]) == lista2[k]:
                si_no = 1
            else:
                si_no = 0
        print (si_no)
