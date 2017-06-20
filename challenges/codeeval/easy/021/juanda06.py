import sys

if __name__=='__main__':
	file=open(sys.argv[1],'r')
	try:
		for line in file:
			sum=0
			line=line.strip()
			for i in line:
				sum+=int(i)
			print sum
	finally:
		file.close()
