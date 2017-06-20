import sys


if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        for line in f:
            s, chars = line.split(',')
            print(s.translate(None, chars.strip()))
