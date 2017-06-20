def sum_of_char(letter,l):
	result = 0
	for x in xrange(len(l)):
		if l[x]== letter:
			result += 1
	return result

def is_describing(num):
	line = [int(i) for i in str(num)]
	dic = dict(enumerate(line))
	result = 1
	for i in dic:
		if sum_of_char(i,line)!=dic[i]:
			result = 0
			break
	return result

import sys

if __name__=='__main__':
	infile =  open(sys.argv[1],'r')
	try:
		for line in infile:
			print is_describing(int(line))
	finally:
		infile.close()
