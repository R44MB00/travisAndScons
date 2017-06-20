import sys

fd = open(sys.argv[1])
for line in fd.readlines():
    line_list = line[:-1].split(' ')
    line_reversed = list(reversed(line_list))
    print " ".join(line_reversed)
