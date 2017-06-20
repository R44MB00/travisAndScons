"""This script contains all the words which are
encountered more than once in lexicographic order."""
DATA = raw_input().split()[:-1]
SORT = sorted(DATA)
ANSWER = set()
for word1, word2 in zip(SORT, SORT[1:]):
    if word1 == word2:
        ANSWER.add(word1)
print ' '.join(sorted(ANSWER))
