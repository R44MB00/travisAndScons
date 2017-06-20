import sys

handle = open(sys.argv[1], 'r')
test_cases = handle.read().splitlines()

def counter(list, needle):
    count = 0
    s = ""
    fila = 0
    has = []
    for numbers in list:
        fila = fila + 1
        for number in numbers.split(" "):
            if needle == number:
                count = count + 1
                if needle in has:
                    s = s + ",%s" % fila
                else:
                    s = "%s:%s" % (needle, fila)
                    has.append(needle)
            else:
                continue
    return s

for test in test_cases:
    if test == "":
        continue

    data = test.split(" | ")
    output = []
    for numbers in data:
        for number in numbers.split(" "):
            if counter(data, number) not in output:
                output.append(counter(data, number))
    sort = sorted(output)
    print "; ".join(sort)+";"

handle.close()
