import sys
import itertools

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    (word,alphabet) = test.split(",")
    for i in alphabet.strip():
        word = word.replace(i, "")
    print word
