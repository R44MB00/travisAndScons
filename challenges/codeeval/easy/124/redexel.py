import sys

with open(sys.argv[1], 'r') as input:
    read = input.read().strip().splitlines()

for distancia in read:
    cities = sorted(int(i[1]) for i in (j.split(',') for j in
                    distancia.rstrip(';').split(';')))
    line = str(cities[0]) + ','
    for i in xrange(1, len(cities)):
        line += str(int(cities[i]) - int(cities[i - 1])) + ','
    print line.rstrip(',')
