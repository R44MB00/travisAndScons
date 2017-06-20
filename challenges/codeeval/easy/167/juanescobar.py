import sys

handle = open(sys.argv[1], 'r')
data = handle.read().splitlines()
handle.close()

for line in data:
    if line == "":
        continue

    if len(line) > 55:
        line = line[:40]
        if " " in line:
            vector = line.split(" ")
            out = ""
            for x in xrange(0, len(vector)-1):
                out += vector[x] + " "
            line = out[:-1]
        line += "... <Read More>"

    print line

