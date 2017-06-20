import sys

def modulo(n,m):

    n = int(n)
    m = int(m)

    return n - (m * int(n/m))

if __name__ == '__main__':
    test_cases = open(sys.argv[1], 'r')
    for line in test_cases:
        
        data = line.strip().split(",")
        n = data[0]
        m = data[1]

        print modulo(n,m)
 
    test_cases.close()
