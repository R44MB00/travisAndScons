
import sys
import re
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        lista_num = re.findall("\d+",stringe)
        lista_char = re.findall("[a-z]+",stringe)
        final = []
        if len(lista_char)>0 and len(lista_num) > 0:
            final = ",".join(lista_char)+"|"+",".join(lista_num)
        elif len(lista_char) ==0 and len(lista_num)>0:
            final =",".join(lista_num)
        elif len(lista_char) >0 and len(lista_num) == 0:
            final = ",".join(lista_char)
        else:
            final = ""
        print (final)
