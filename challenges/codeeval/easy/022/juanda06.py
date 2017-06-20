import sys

def fabonacci(n):
	if n<2:
		return n
	else:
		return fabonacci(n-1)+fabonacci(n-2)

if __name__=='__main__':
	file=open(sys.argv[1],'r')
	try:
		for line in file:
			line=line.strip()
			print fabonacci(int(line))
	finally:
		file.close()
