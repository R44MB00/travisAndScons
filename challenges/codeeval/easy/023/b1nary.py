#python 2.7
solve = ''
for x in range(1,13):
    solve += str(x)
    for y in range(2,13):
        if x*y>=10:
            if x*y>=100:
                solve+=' '+str(x*y)
            else:
                solve+='  '+str(x*y)
        else:
            solve+='   '+str(x*y)
    solve+= '\n'

print solve
