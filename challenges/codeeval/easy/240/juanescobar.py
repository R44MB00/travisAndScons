import sys

mersenne = [
    "3",
    "7",
    "31",
    "127",
    "8191",
    "131071",
    "524287",
    "2147483647",
    "2305843009213693951",
    "618970019642690137449562111", 
    "162259276829213363391578010288127", 
    "170141183460469231731687303715884105727",
]

handle = open(sys.argv[1], 'r')
test_cases = handle.read().splitlines()
handle.close()
for test in test_cases:
    test = int(test)
    if test == "":
        continue
    if test <= 3:
        continue

    output = ""
    for i in mersenne:
        i = int(i)
        if i < test:
            output = output + str(i) + ", "
        else:
            break
    print output[:-2]
