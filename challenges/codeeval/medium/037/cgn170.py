import sys
file = open(sys.argv[1], 'r')
for test in file:
    test_lowercase=test.rstrip("\n").lower()
    ascii_not_found=[]
    for dec_ascii in range(97,123,1):
        char_ascii=chr(dec_ascii)
        if test_lowercase.find(char_ascii)==-1:
             ascii_not_found.append(char_ascii)
    if ascii_not_found:
        print "".join(ascii_not_found)
    else:
        print "NULL"
file.close()
