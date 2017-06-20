import sys
if __name__=='__main__':
	result=0
	try:
		file=open(sys.argv[1],'r')
		for line in file:
			result += int(line.strip())
	finally:
		print result
