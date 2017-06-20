"""This script gives a single word - one
most frequently encountered in the list."""
CONSONANT = 'bcdfghjklmnprstvwxz'
VOWELS = 'aeiou'
WORD, SEED = 900000, int(raw_input())
LENGTH = 6
A = 445
C = 700001
M = 2097152
WORDS = []


def word_list():
    """This function generates a list of 90000 words"""
    randoms = []
    for i in range(LENGTH):
        __seed__ = (A * SEED + C) % M
        randoms.append(__seed__)
    word_in_list = ''
    for i in range(LENGTH):
        if i % 2 != 1:
            word_in_list += CONSONANT[randoms[i] % 19]
        else:
            word_in_list += VOWELS[randoms[i] % 5]
    WORDS.append(word_in_list)


for j in xrange(WORD):
    word_list()
DICTIONARY = {}
for word in WORDS:
    if word in DICTIONARY:
        DICTIONARY[word] += 1
    else:
        DICTIONARY[word] = 1
print max(DICTIONARY, key=lambda k: DICTIONARY[k])
