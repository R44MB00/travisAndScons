import sys


if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        for line in f:
            A, B, N = list(map(int, line.split()))
            output = []
            
            for i in range(1, N + 1):
                if i % (A * B) == 0:
                    output.append('FB')
                elif i % A == 0:
                    output.append('F')
                elif i % B == 0:
                    output.append('B')
                else:
                    output.append(str(i))
            
            print(' '.join(output))
