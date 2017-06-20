import sys
test_cases = open(sys.argv[1], 'r')
j = 0
for test in test_cases:
    test = test.replace("\n","")
    if j == 0:
        num = int(test)
        biggest = [""]*num
    else:
        added = False
        for i in range(num):
            if len(test) > len(biggest[i]) and not(added):
                biggest.insert(i,test)
                biggest.pop(num)
                biggest.sort(key=len,reverse=True)
                added = True
    j+=1

print("\n".join(biggest))
test_cases.close()
