import sys


if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        for line in f:
            if line:
                print(' '.join(line.split()[::-1]))
