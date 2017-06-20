import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    x = test.split()
    y = sorted(x)
    w = sorted(set(x))
    
    for i in w:
        primero = False
        salirTodo = False
        for j in y:
            if i == j:
                if primero == False:
                    primero = True
                else:
                    break
            else:
                print x.index(i)+1
                salirTodo = True
                break
        y[:] = [xw for xw in y if xw != i]
        if salirTodo == True:
            break
    
    if salirTodo == False:
        print 0
