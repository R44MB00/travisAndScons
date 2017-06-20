import sys

def is_happy_number(number, temp = None):
    
    if temp == None:
        temp = []

    r = 0
    for i in number:
        q = int(i) ** 2
        r = r + q
    
    if r == 1:
        return 1
    elif r in temp:
        return 0
    else:
        temp.append(r)
        return is_happy_number(str(r), temp)
    

if __name__ == '__main__':
    test_cases = open(sys.argv[1], 'r')
    for line in test_cases:
        print is_happy_number(line.strip())
 
    test_cases.close()
