import sys

def searchAll(wordToSearch, patt):
    wordToSearch = wordToSearch.replace("*", "#")
    patt = patt.replace("\\*", "#")

    for p in patt.split("*"):
        indexFounded = wordToSearch.find(p)
        if indexFounded < 0:
            return False

        wordToSearch = wordToSearch[indexFounded+len(p):]

    return True

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()

    wordToSearch = test.split(",")[0]
    patt = test.split(",")[1]

    if searchAll(wordToSearch, patt) == True:
        print 'true'
    else:
        print 'false'
    

test_cases.close()
