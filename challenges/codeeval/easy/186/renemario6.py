import sys


archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
	    a, b = line.split(';')
	    a = int(a)
	    b = [int(i) for i in b.split()]
	    off= range(0, len(b) - a + 1)
	    ciclos = [b[i:i+a] for i in off]
	    maxima = max(sum(period) for period in ciclos)
	    if maxima > 0:
	    	print maxima
	    else:
	    	print 0


archivo.close()
