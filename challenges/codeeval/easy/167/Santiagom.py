import sys,string

def trimString(line):
    if len(line) <= 55:
        return line
    else:
        line = line[0:40]
        if line.rfind(' ') != -1: line = line[0:line.rfind(' ')]
        return line + "... <Read More>"


test_cases = open(sys.argv[1], 'r')
suma =""
for test in test_cases:
	test = test.strip()
	print (trimString(test))
test_cases.close()
