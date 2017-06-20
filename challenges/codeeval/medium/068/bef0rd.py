import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    s_stack = []
    salida = "True"
    for i in test:
        if i == "(" or i == "{" or i == "[":
            s_stack.append(i)
        elif i == ")" or i == "]" or i == "}":
            if len(s_stack) > 0:
                ultimo = s_stack.pop()
                if ultimo == "(" and i == ")" or ultimo == "{" and i == "}" or ultimo == "[" and i == "]":
                    continue
                else:
                    salida = "False"
                    break
            else:
                salida = "False"
            break
        
        
    if salida == "True" and len(s_stack) == 0:
        print "True"
        continue
    else: 
        print "False"
        continue
