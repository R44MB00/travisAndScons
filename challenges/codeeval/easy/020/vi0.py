import sys

fd=open(sys.argv[1])
for line in fd.readlines():
    print line[:-1].lower()
