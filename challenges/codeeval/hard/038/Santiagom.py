import sys

def posiblesPalabras(alphabet, length, pre=""):
    if len(pre) == length:
        return [pre]


    result = []

    for c in alphabet:
        r = posiblesPalabras(alphabet, length, pre + c)

        for i in r:
            result.append(i)

    return result

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()

    length = int(test.split(',')[0])
    chars = test.split(',')[1]

    alphabet = set()
    for c in chars:
        alphabet.add(c)

    print(",".join(sorted(posiblesPalabras(alphabet, length))))

test_cases.close()
