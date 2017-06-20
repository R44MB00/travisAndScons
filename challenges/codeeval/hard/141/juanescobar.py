import sys
test_cases = open(sys.argv[1], 'r')
tests = test_cases.read().splitlines()
for test in tests:
    words = test.split(";")[0].split(" ")
    numbers = test.split(";")[1].split(" ")
    output = ["0"] * len(words)
    missing = ""
    text = ""
    for i in numbers:
        pos = int(i)-1
        word = words[numbers.index(str(pos+1))]
        output[pos] = word
    for x in words:
        if x not in output:
            missing = x
    for index,s in enumerate(output):
        if s == "0":
            text += missing + " "
        else:
            text += output[index] + " "
    print text[:-1]
test_cases.close()
