import sys

for i in xrange(1, 13):
    for j in xrange(1, 13):
        sys.stdout.write("%d" % (i * j))
        if j != 12:
            sys.stdout.write(' ' * ( 4 - len(str((i * (j+1))) )))
    print ''
