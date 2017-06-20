import sys
test_cases = open(sys.argv[1], 'r')
temp = test_cases.read().splitlines()

def getnumber(letter):
    if letter == "J":
        return 11
    elif letter == "Q":
        return 12
    elif letter == "K":
        return 13
    elif letter == "A":
        return 14
    else:
        return letter

def getletter(num):
    if num == 11:
        return "J"
    elif num == 12:
        return "Q"
    elif num == 13:
        return "K"
    elif num == 14:
        return "A"
    else:
        return num

for test in temp:
    # ignore test if it is an empty line
    if test == '':
        continue

    data = test.split(" | ")
    cards = data[0].split(" ")
    trump = data[1]
    cn1 = getnumber(cards[0][:-1])
    cn2 = getnumber(cards[1][:-1])
    ct1 = cards[0][1:]
    ct2 = cards[1][1:]

    if ct1 == trump:
        print cards[0]
    elif ct2 == trump:
        print cards[1]
    elif cn1 == cn2:
        print "%s %s" % (cards[0], cards[1])
    elif cn1 > cn2:
        print cards[0]
    elif cn2 > cn1:
        print cards[0]
    else:
        pass

test_cases.close()
