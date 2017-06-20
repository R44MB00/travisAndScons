def pot(x):
    if x == 0: 
    	return 1
    r = 0
    l = int(x ** 0.5)+1
    for k in range(0,l):
        i = int((x - (k ** 2)) ** 0.5)
        cond = i ** 2 + k ** 2
        if i < k: 
    		break
        if x == cond: 
    		r = r + 1
    return r
    
test = test.strip()
numb = pot(int(test))
print numb
