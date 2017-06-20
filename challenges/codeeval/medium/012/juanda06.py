import collections, sys


if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        for line in f:
            line = line.strip()
            
            if line:
                c = collections.Counter(line)
                
                for x in line:
                    if c[x] == 1:
                        print(x)
                        break
