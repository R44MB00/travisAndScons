import sys


if __name__ == '__main__':
    lines, lengths = [''], [0]
    
    with open(sys.argv[1]) as f:
        n = int(f.readline())
        
        for line in f:
            line = line.strip()
            
            if len(line) > min(lengths):
                if len(lines) >= n:
                    idx = lengths.index(min(lengths))
                    lines.pop(idx)
                    lengths.pop(idx)
                
                lines.append(line)
                lengths.append(len(line))
        
    for line in [x for (y, x) in sorted(zip(lengths, lines), reverse = True)]:
        print(line)
