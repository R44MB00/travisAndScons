import sys

def is_armstrong_number(n):
    r = sum([int(c)**len(n) for c in n])
    if str(r) == n:
        return True
    else:
        return False

if __name__ == '__main__':
    test_cases = open(sys.argv[1], 'r')
    for line in test_cases:
        print is_armstrong_number(line.strip())
 
    test_cases.close()
