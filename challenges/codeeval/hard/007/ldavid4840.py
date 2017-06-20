import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    for line in test.split("\n\n"):
        op = line.split(" ")
        i = 0
        while not(op[i].isdigit()) and (i < len(op)):
            i+=1
        operations = op[:i]
        numbers = op[i:]
        total = ""
        i = 0
        total = "("+str(numbers[0])+str(operations[len(operations)-1])+str(numbers[1])+ ")"
        num = eval(total)
        for i in range(len(operations)-1):
            total = "("+str(num)+str(operations[len(operations)-2-i])+str(numbers[i+2])+ ")"
            num = eval(total)
        num = eval(total)
        if num == int(num):
            print(int(num))
        else:
            print (num)
test_cases.close()
