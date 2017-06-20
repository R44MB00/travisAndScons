import sys

lang=" !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    l=test.split(";")
    key=l[0]
    letters=l[1].strip()
    if len(letters)>len(key):
        key*=len(letters)/len(key)
        key+=key[:len(letters)%len(key)]
    elif len(letters)<len(key):
        key=key[:len(letters)]
    final=""
    for i in range(len(letters)):
        final+=lang[lang.find(letters[i])-int(key[i])]
    print final
test_cases.close()
