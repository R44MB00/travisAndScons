import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    r=""
    for i in test:
        if not i.isalpha():
            r+=" "
        else:
            r+=i.lower()
    while True:
        if r!=r.replace("  "," "):
            r=r.replace("  "," ")
        else:
            break
    print r.strip()
test_cases.close()      
