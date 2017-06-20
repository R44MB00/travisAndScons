

def x(numero):
	n0 = '-**---*-***-***--*--****-**-****-**--**-'
	n1 = '*--*-**----*---**--**---*------**--**--*'
	n2 = '*--*--*--**--**-*******-***---*--**--***'
	n3 = '*--*--*-*------*---*---**--*-*--*--*---*'
	n4 = '-**--**********----****--**--*---**--**-'

	l0, l1, l2, l3, l4 = "", "", "", "", ""
	
	for i in numero:
		if i.isdigit():
			y = int(i)			
			l0 = l0 + n0[y*4:y*4+4] + "-"
			l1 = l1 + n1[y*4:y*4+4] + "-"
			l2 = l2 + n2[y*4:y*4+4] + "-"
			l3 = l3 + n3[y*4:y*4+4] + "-"
			l4 = l4 + n4[y*4:y*4+4]	+ "-"
	
	print l0
	print l1
	print l2
	print l3
	print l4
	print "-"*len(l4)

import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
	x(test)
