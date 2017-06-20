import sys

if __name__=='__main__':
	file=open(sys.argv[1],'r')
	try:
		for line in file:
			line=line.strip()
			print line.lower()
	finally:
		file.close()
