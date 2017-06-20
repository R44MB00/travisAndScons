def isodd(num):
	return True if num&1 else False

if __name__=='__main__':
	for i in xrange(1,100):
		if isodd(i):
			print i
